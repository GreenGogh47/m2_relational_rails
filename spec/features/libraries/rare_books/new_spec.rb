require 'rails_helper'

RSpec.describe 'Parent Show ' do

  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
  end

  describe "User Story 13, Parent Child Creation, as a visitor" do
    describe "when I visit libraries/:id/rare_books/new" do
      it 'creates a new rare_book' do
        visit "/libraries/#{@library_1.id}/rare_books"
        click_link "Create New Rare Book"
        expect(current_path).to eq("/libraries/#{@library_1.id}/rare_books/new")

        fill_in 'Title', with: 'A Spooky Book'
        fill_in 'Cost', with: '789'
        fill_in 'On display', with: 'true'
        click_on "Create Rare Book"

        expect(current_path).to eq("/libraries/#{@library_1.id}/rare_books")
        expect(page).to have_content('A Spooky Book')
      end
    end
  end
end