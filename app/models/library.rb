class Library < ApplicationRecord
  has_many :rare_books
  
  def index
    @libraries = Library.all
  end
end
