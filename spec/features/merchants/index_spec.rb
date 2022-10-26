require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'displays a list of merchants by name' do
    visit '/merchants'

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Klein, Rempel and Jones')
  end

  it 'has a link on each merchants name to take user to merchant show page' do
    visit '/merchants'

    merchant = MerchantFacade.find_merchants.first

    click_link "#{merchant.name}"
    expect(current_path).to eq("/merchants/#{merchant.id}")
  end
end
