class HeliosConnector 
  include HTTParty
  base_uri 'cielo-helios.prd.dcd.m4u:8080'

  def hosts
    response = self.class.get('/hosts') 
    return [] unless success?(response)
    response
  end

  def status(host)
    response = self.class.get("/hosts/#{host}/status") 
    return [] unless success?(response) 
    response
  end

  private

  def success?(response)
    response.code == 200 && response.any?
  end
end
