class RareBooksController < ApplicationController

  def index
    @rare_books = RareBook.all
  end
end