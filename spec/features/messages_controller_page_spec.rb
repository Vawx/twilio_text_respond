require 'rails_helper'

feature 'create a message' do
  scenario 'user creates message with valid input' do
    visit new_message_path
    fill_in 'messageBody', with: "RSPECCING IT UP"
    click_button 'Send Text'
    expect(page).to have_content('Your message was sent!')
  end
  scenario 'user creates message with valid input' do
    visit new_message_path
    click_button 'Send Text'
    expect(page).to have_content("Body can't be blank")
  end
end
