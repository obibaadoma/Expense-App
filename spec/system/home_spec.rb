require 'rails_helper'

RSpec.describe 'Welcome page', type: :system do
  it 'can see the app title' do
    visit unauthenticated_root_path
    expect(page).to have_content('Expense App')
  end

  it 'can see the login button' do
    visit unauthenticated_root_path
    expect(page).to have_content('Log in')
  end

  it 'can see the signup link' do
    visit unauthenticated_root_path
    expect(page).to have_content('Sign Up')
  end

  it 'can navigate to the Home page (categories page)' do
    # Assuming there is a path for the Home page, replace 'home_path' with the actual path
    visit home_path
    expect(page).to have_content('Categories')  # Adjust this based on your Home page content
  end

  it 'can navigate to the Transactions page' do
    # Assuming there is a path for the Transactions page, replace 'transactions_path' with the actual path
    visit transactions_path
    expect(page).to have_content('Transactions')  # Adjust this based on your Transactions page content
  end
end
