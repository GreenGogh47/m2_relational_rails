class RareBooksController < ApplicationController

  def index
    @rare_books = RareBook.all
  end

  def show
    @rare_book = RareBook.find(params[:id])
  end
end