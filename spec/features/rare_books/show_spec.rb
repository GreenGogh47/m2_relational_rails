require 'rails_helper'

RSpec.describe 'User Story 4, Child Show ' do
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

  describe "As a visitor" do
    describe "when I visit /rare_books/:id" do
      it "I see the rare_book with that ID with elements" do
        visit "/rare_books"
        expect(page).to have_content(@rare_book_1.title)
        expect(page).to have_content(@rare_book_1.cost)
        expect(page).to have_content(@rare_book_1.on_display)
        expect(page).to have_content(@rare_book_1.library.name)

        expect(page).to have_content(@rare_book_2.title)
        expect(page).to have_content(@rare_book_2.cost)
        expect(page).to have_content(@rare_book_2.on_display)
        expect(page).to have_content(@rare_book_2.library.name)
      end
    end
  end
end