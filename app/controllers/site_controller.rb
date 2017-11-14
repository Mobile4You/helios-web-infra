class SiteController < ApplicationController

  def index
    @profiles = Profile.all
    hosts = helios.hosts
    @instances = hosts.map{ |e| { hostname: e, status: helios.status(e), profile: !Instance.find_by_hostname(e).nil? } }

    respond_to do |format|
      format.html
      format.json do 
        render json: { items: prepare_json(@instances) }
      end
    end
  end

  private

  def helios
    HeliosConnector.new
  end

  def prepare_json(instances)
    items = instances.map do |v|
      v[:status]['jobs'].keys.map do |i|
        prepare_item(v, i)
      end
    end.flatten
  end

  def prepare_item(instance, job)
    # omaha-hopper-service-rails:8-531845:f5374cbc7d5229be84ebffd212aff9527579ac31
    temp = job.split(':')
    commit = temp[1].split('-')[1]
    jid = temp[1].split('-')[1]
    name = temp[0].gsub('omaha-', '').gsub('-service-rails', '')
    
    {
      hostname: instance[:hostname],
      service_name: name,
      commit_hash: commit,
      ci_job_id: jid
    }
  end
end
