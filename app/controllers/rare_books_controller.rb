class RareBooksController < ApplicationController

  def index
    @rare_books = RareBook.where(on_display: true)
  end

  def show
    @rare_book = RareBook.find(params[:id])
  end
end