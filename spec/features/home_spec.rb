require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

RSpec.feature "Home", :type => :feature do
  scenario 'Home' do
    visit '/'

    expect(page).to have_selector("input[placeholder='search pictures...']")
    expect(page).to have_selector(:button, 'Search')
  end
end
