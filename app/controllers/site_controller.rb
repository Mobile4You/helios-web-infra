class SiteController < ApplicationController

  def index
    @profiles = Profile.all
    hosts = helios.hosts
    @instances = hosts.map{ |e| { hostname: e, status: helios.status(e), profile: !Instance.find_by_hostname(e).nil? } }
  end

  private

  def helios
    HeliosConnector.new
  end

end
