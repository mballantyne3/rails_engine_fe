require 'rails_helper'

RSpec.describe 'merchants index page' do
  it 'displays a list of merchants by name' do
    visit '/merchants'

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Klein, Rempel and Jones')
  end
end
