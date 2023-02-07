require 'rails_helper'

RSpec.describe "New Library" do
  describe "User Story 11, Parent Creation, as a visitor" do
    describe "on Library Index page" do
      it "creates a new library" do
        visit '/libraries'
        click_link 'Create New Library'
        expect(current_path).to eq('/libraries/new')
        
        fill_in 'Name', with: 'A New Library'
        fill_in 'Study rooms', with: '23'
        fill_in 'Free parking', with: 'false'
        click_on "Create Library"

        expect(current_path).to eq("/libraries")
        expect(page).to have_content('A New Library')
      end
    end
  end
end