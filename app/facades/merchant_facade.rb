class MerchantFacade

  def self.find_merchants
    MerchantService.fetch_all_merchants[:data].map do |merchant_data|
      MerchantDetails.new(merchant_data)
    end
  end
end
