class ItemDetails
  attr_reader :name, :description, :id, :merchant_id, :unit_price

  def initialize(data)
    @name = data[:attributes][:name]
    @description = data[:attributes][:description]
    @id = data[:id]
    @merchant_id = data[:attributes][:merchant_id]
    @unit_price = data[:attributes][:unit_price]
  end
end
