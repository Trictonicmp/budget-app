require 'rails_helper'

RSpec.describe 'App', type: :feature do
  before {
    visit root_path
    click_on 'Sign Up'
    fill_in 'Email', with: 'some.email@gmail.com'
    fill_in 'Name', with: 'John Doe'
    fill_in 'Password (6 characters minimum)', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
  }

  scenario 'Create category' do
    click_on 'New Category'
    fill_in 'Name', with: 'My new category'
    attach_file('spec/features/img.png')
    click_on 'Add Category'
    expect(page).to have_content('My new category')
  end

  scenario 'Visit category/show' do
    click_on 'New Category'
    fill_in 'Name', with: 'My new category'
    attach_file('spec/features/img.png')
    click_on 'Add Category'

    click_on 'My new category'

    expect(page).to have_content('$0')
  end

  scenario 'Creates a new expense' do
    click_on 'New Category'
    fill_in 'Name', with: 'My new category'
    attach_file('spec/features/img.png')
    click_on 'Add Category'

    click_on 'My new category'
    within(".button-container") do
      click_on 'Add expense'
    end

    fill_in 'Name', with: 'My first expense'
    fill_in 'Amount', with: '10.5'
    
    within(".button-container") do
      click_on 'Add expense'
    end

    expect(page).to have_content('$10.5')
  end
end