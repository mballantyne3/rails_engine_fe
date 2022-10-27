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

  def self.merchant_items(merchant_id)
    MerchantService.merchant_items(merchant_id)[:data].map do |data|
      ItemDetails.new(data)
    end
  end
end
