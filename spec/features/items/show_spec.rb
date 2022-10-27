require 'rails_helper'

RSpec.describe 'items show page' do
  it 'displays the items description, name, and unit price' do
    item = ItemFacade.fetch_all_items.first

    visit "/items/#{item.id}"

    expect(page).to have_content(item.name)
    expect(page).to have_content(item.description)
    expect(page).to have_content(item.unit_price)
  end
end
