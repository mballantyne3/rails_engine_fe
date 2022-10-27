require 'rails_helper'

RSpec.describe 'items index page' do
  it 'displays a list of items by name' do
    visit '/items'

    item = ItemFacade.fetch_all_items.first

    expect(page).to have_content(item.name)
  end

  it 'has a link to each items show page when clicking on their name' do
    visit '/items'

    item = ItemFacade.fetch_all_items.first

    click_link "#{item.name}"

    expect(current_path).to eq("/items/#{item.id}")
  end
end
