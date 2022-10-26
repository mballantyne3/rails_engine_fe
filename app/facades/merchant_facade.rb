class MerchantFacade

  def self.find_merchants
    MerchantService.fetch_all_merchants[:data].map do |merchant_data|
      MerchantDetails.new(merchant_data)
    end
  end

  def self.find_one_merchant(merchant_id)
    data = MerchantService.fetch_one_merchant(merchant_id)[:data]
    MerchantDetails.new(data)
  end
end
