class ItemFacade

  def self.fetch_all_items
    ItemService.all[:data].map do |item_data|
      ItemDetails.new(item_data)
    end
  end
end
