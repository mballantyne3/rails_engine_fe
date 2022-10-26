class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.find_merchants
  end

  def show
    @merchant = MerchantFacade.find_one_merchant(params[:id])
  end
end
