class Library < ApplicationRecord
  has_many :rare_books

  def count
    self.rare_books.count
  end
end
