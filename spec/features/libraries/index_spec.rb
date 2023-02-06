require 'rails_helper'

RSpec.describe 'Libraries Index' do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @library_2 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)
  end
  
  describe "User Story 1, Parent Index, As a visitor" do
    describe "when I visit /libraries" do
      it "shows the name of each library" do
        visit "/libraries"
        expect(page).to have_content(@library_1.name)
        expect(page).to have_content(@library_2.name)
      end
    end
  end

  describe "User Story 6 - Parent Index sorted by Most Recently Created" do
    describe "as a visitor, When I visit the parent index," do
      it 'records are ordered by most recently created first' do
        @library_3 = Library.create!(name: "Jedi Archives",
                                study_rooms: 8765,
                                free_parking: false)
        visit "/libraries"
        expect(@library_3.name).to appear_before(@library_1.name)
      end

      it 'next to each of the records I see when it was created' do
        visit "/libraries"
        expect(page).to have_content(@library_1.created_at)
        expect(page).to have_content(@library_2.created_at) 
      end
    end
  end
end