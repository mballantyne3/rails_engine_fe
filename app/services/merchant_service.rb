class MerchantService

  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.fetch_all_merchants
    response = conn.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end
end
