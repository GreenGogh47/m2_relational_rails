require 'rails_helper'

RSpec.describe Library, type: :model do
  # before(:each) do
  #   @library_1 = Library.create!(name: "Hogwarts",
  #                               study_rooms: 321,
  #                               free_parking: false)
  #   @library_2 = Library.create!(name: "Middle Earth Public Library",
  #                               study_rooms: 543,
  #                               free_parking: true)
  # end

  describe 'relationship' do
    it {should have_many :rare_books}
  end
end
