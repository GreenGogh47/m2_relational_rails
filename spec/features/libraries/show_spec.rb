require 'rails_helper'

RSpec.describe 'Parent Show ' do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @library_2 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)

    @rare_book_1 = @library_1.rare_books.create!(title: "Witches and Sh-tuff",
                                                cost: 2345,
                                                on_display: false)
    @rare_book_2 = @library_2.rare_books.create!(title: "Shaving Hobbit Feet",
                                                cost: 2000000,
                                                on_display: true)
  end
  
  describe "User Story 2 - As a visitor" do
    describe "when I visit /libraries/:id" do
      it "shows that library and all with the attributes" do
        visit "/libraries/#{@library_1.id}"
        expect(page).to have_content(@library_1.name)
        expect(page).to have_content(@library_1.study_rooms)
        expect(page).to have_content(@library_1.free_parking)

        visit "/libraries/#{@library_2.id}"
        expect(page).to have_content(@library_2.name)
        expect(page).to have_content(@library_2.study_rooms)
        expect(page).to have_content(@library_2.free_parking)
      end
    end
  end
end