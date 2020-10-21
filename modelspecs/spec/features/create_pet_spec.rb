require 'rails_helper'

feature 'we create a pet' do
    scenario "successfully create a new pet" do
        visit "/pets/new"
        fill_in 'pet_name', with: 'Fido'
        fill_in 'pet_breed', with: 'Boxer'
        click_button "Create Pet"
        expect(page).to have_content 'Pet successfully created'
    end
end