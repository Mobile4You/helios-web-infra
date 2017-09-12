# frozen_string_literal: true

class ApplicationConnector

  include HTTParty

  base_uri 'localhost:3000'

  def initialize; end

  def success?(response)
    response.code == 200 && response.any?
  end

end
