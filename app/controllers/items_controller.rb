class ItemsController < ApplicationController

  def index
    @items = ItemFacade.fetch_all_items
  end

  def show
    @item = ItemFacade.find_one_item(params[:id])
  end
end
