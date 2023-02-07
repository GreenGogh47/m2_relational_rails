require 'rails_helper'

RSpec.describe "Edit Library" do
  before(:each) do
    @library_1 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)
  end

  describe "User Story 12, Parent Update, as a visitor" do
    describe "on library show page, clickable link to update library" do
      it 'updates an existing library' do
        visit "/libraries/#{@library_1.id}"
        click_link "Update Library"
        expect(current_path).to eq("/libraries/#{@library_1.id}/edit")

        fill_in 'Name', with: 'The Shires on Fires'
        fill_in 'Study rooms', with: '0'
        fill_in 'Free parking', with: 'false'
        click_on "Submit Updates"

        expect(current_path).to eq("/libraries/#{@library_1.id}")
        expect(page).to have_content('The Shires on Fires')
        expect(page).to have_content('0')
        expect(page).to have_content('false')
      end
    end
  end
end