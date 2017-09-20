class HeliosConnector
  include HTTParty
  base_uri ENV['HELIOS_URL'] || 'localhost:3000'

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
