# frozen_string_literal: true

class StoreConnector < ApplicationConnector

  base_uri ENV['STORE_URL']

  def get_terminal_apps(merchant_id, number)
    headers = { 'Merchant-Id' => merchant_id }
    response = self.class.get('/api/v2/terminals', query: { merchant_id: merchant_id, number: number }, headers: { 'Merchant-Id' => merchant_id, 'Content-Type' => 'application/json' })
    if success?(response)
      terminal_id = JSON.parse(response.body)[0]['id']
      apps_response = self.class.get("/api/v2/terminals/#{terminal_id}/apps_versions_blocked", headers: headers )
      return apps_response.parsed_response if apps_response.respond_to?(:parsed_response)
    end
    []
  end

  def get_terminal_uuid(merchant_id, number)
      headers = { 'Merchant-Id' => merchant_id }
      response = self.class.get('/api/v2/terminals', query: { merchant_id: merchant_id, number: number }, headers: { 'Merchant-Id' => merchant_id, 'Content-Type' => 'application/json' })
      if success?(response)
        terminal_id = JSON.parse(response.body)[0]['id']
      end
        terminal_id
    end
    
end
