require 'rails_helper'

RSpec.describe 'User Story 1, Parent Index' do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @library_2 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)
  end
  
  describe "As a visitor" do
    describe "when I visit /libraries" do
      it "shows the name of each library" do
        visit "/libraries"
        expect(page).to have_content(@library_1.name)
        expect(page).to have_content(@library_2.name)
      end
    end
  end
end