class SiteController < ApplicationController
  
  def index
    @profiles = Profile.all
    hosts = helios.hosts
    @instances = hosts.map{ |e| { name: e, status: helios.status(e) } }
  end

  private

  def helios
    HeliosConnector.new
  end
end
