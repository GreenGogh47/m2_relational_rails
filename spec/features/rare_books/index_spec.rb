require 'rails_helper'

RSpec.describe 'User Story 3, Child Index' do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @library_2 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)
    
    @rare_book_1 = RareBook.create!(title: "Witches and Sh-tuff",
                                    cost: 2345,
                                    on_display: false,
                                    libraries_id: 1)
    @rare_book_2 = RareBook.create!(title: "Shaving Hobbit Feet",
                                    cost: 2000000,
                                    on_display: true,
                                    libraries_id: 2)
  end
  
  describe "As a visitor" do
    describe "when I visit /rare_books" do
      it "shows the title of each book" do
        visit "/rare_books"
        expect(page).to have_content(@rare_book_1.title)
        expect(page).to have_content(@rare_book_2.title)
      end
    end
  end
end