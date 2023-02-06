require 'rails_helper'

RSpec.describe Library, type: :model do
  before(:each) do
    @library_1 = Library.create!(name: "Hogwarts",
                                study_rooms: 321,
                                free_parking: false)
    @rare_book_1 = @library_1.rare_books.create!(
                                title: "Witches and Sh-tuff",
                                cost: 2345,
                                on_display: false)
    @rare_book_2 = @library_1.rare_books.create!(
                                title: "Shaving Hobbit Feet",
                                cost: 2000000,
                                on_display: true)
    @rare_book_3 = @library_1.rare_books.create!(
                                title: "Intro to Geomancy",
                                cost: 8765,
                                on_display: true)
  end

  describe 'relationship' do
    it {should have_many :rare_books}
  end

  describe '#count' do
    it 'returns number of rare_books' do
      expect(@library_1.count).to eq(3)
    end
  end
end
