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

  describe "User Story 5 - As a visitor" do
    describe "when i visit /libraries/:id/rare_books" do
      it "shows BOOKS (with attributes) associated with :id" do
        visit "/libraries/#{@library_1.id}/rare_books"
        # expect(page).to have_content(@library_1.name)
        expect(page).to have_content(@rare_book_1.title)
      end
    end
  end
end