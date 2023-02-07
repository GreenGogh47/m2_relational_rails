require 'rails_helper'

RSpec.describe 'rare_books index' do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @library_2 = Library.create!(name: "Middle Earth Public Library",
                                study_rooms: 543,
                                free_parking: true)
    
    @rare_book_1 = @library_1.rare_books.create!(
                                title: "Witches and Sh-tuff",
                                cost: 2345,
                                on_display: false)
    @rare_book_2 = @library_2.rare_books.create!(
                                title: "Shaving Hobbit Feet",
                                cost: 2000000,
                                on_display: true)
  end
  
  describe "User Story 8, Child Index Link, As a visitor" do
    describe "When I visit any page, there is a link atop the page" do
      it "it takes me to the RAREBOOKS Index" do
        visit "/"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        visit "/libraries"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        
        visit "/libraries/#{@library_1.id}"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        visit "/libraries/#{@library_2.id}"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        
        visit "/libraries/#{@library_1.id}/rare_books"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        visit "/libraries/#{@library_2.id}/rare_books"
        expect(page).to have_link("All Rare Books", href: '/rare_books')

        visit "/rare_books"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        visit "/rare_books/#{@rare_book_1.id}"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
        visit "/rare_books/#{@rare_book_2.id}"
        expect(page).to have_link("All Rare Books", href: '/rare_books')
      end
    end
  end

  describe "User Story 9, Parent Index Link, As a visitor" do
    describe "When I visit any page, there is a link atop the page" do
      it "it takes me to the LIBRARIES Index" do
        visit "/"
        expect(page).to have_link("All Libraries", href: '/libraries')
        visit "/libraries"
        expect(page).to have_link("All Libraries", href: '/libraries')
        
        visit "/libraries/#{@library_1.id}"
        expect(page).to have_link("All Libraries", href: '/libraries')
        visit "/libraries/#{@library_2.id}"
        expect(page).to have_link("All Libraries", href: '/libraries')
        
        visit "/libraries/#{@library_1.id}/rare_books"
        expect(page).to have_link("All Libraries", href: '/libraries')
        visit "/libraries/#{@library_2.id}/rare_books"
        expect(page).to have_link("All Libraries", href: '/libraries')

        visit "/rare_books"
        expect(page).to have_link("All Libraries", href: '/libraries')
        visit "/rare_books/#{@rare_book_1.id}"
        expect(page).to have_link("All Libraries", href: '/libraries')
        visit "/rare_books/#{@rare_book_2.id}"
        expect(page).to have_link("All Libraries", href: '/libraries')
      end
    end
  end
end