class RareBooksController < ApplicationController
  # belongs_to :libraries

  def index
    @rare_books = RareBook.all
  end
end