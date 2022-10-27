require 'rails_helper'

RSpec.describe 'merchant show page' do
  it 'displays a list of items that merchant sells' do

    merchant = MerchantFacade.find_merchants.first
    items = MerchantFacade.merchant_items(merchant.id)

    visit "/merchants/#{merchant.id}"

    expect(page).to have_content(items.first.name)
  end
end
