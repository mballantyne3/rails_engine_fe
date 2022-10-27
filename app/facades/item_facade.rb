class ItemFacade

  def self.fetch_all_items
    ItemService.all_items[:data].map do |item_data|
      ItemDetails.new(item_data)
    end
  end

  def self.find_one_item(item_id)
    data = ItemService.fetch_one_item(item_id)[:data]
    ItemDetails.new(data)
  end
end
