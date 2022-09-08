require 'rails_helper'

RSpec.describe 'Visit Homepage', type: :feature do
  scenario 'Spash screen buttons Log In' do
    visit root_path
    expect(page).to have_content('Log In')
  end
  
  scenario 'Spash screen buttons Sign Up' do
    visit root_path
    expect(page).to have_content('Sign Up')
  end

  scenario 'Sign up' do
    visit root_path
    click_on 'Sign Up'
    fill_in 'Email', with: 'some.email@gmail.com'
    fill_in 'Name', with: 'John Doe'
    fill_in 'Password (6 characters minimum)', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
    
    expect(page).to have_content('Total expenses')
  end
end