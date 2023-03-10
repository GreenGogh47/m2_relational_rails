require 'rails_helper'

RSpec.describe 'rare_books index' do
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
  
  describe "User Story 3, Child Index, As a visitor" do
    describe "when I visit /rare_books" do
      it "shows the title of each book" do
        visit "/rare_books"
        expect(page).to have_content(@rare_book_1.title)
        expect(page).to have_content(@rare_book_2.title)
      end
    end
  end
end