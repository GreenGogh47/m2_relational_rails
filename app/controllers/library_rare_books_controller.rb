class LibraryRareBooksController < ApplicationController
  def index
    @library = Library.find(params[:id])
    @rare_books = @library.rare_books
  end

  def new
    @library = Library.find(params[:id])
  end

  def create
    library = Library.find(params[:id])
    library.rare_books.create!(rare_book_params)
    redirect_to "/libraries/#{library.id}/rare_books"
  end

  private

  def rare_book_params
    params.permit(:title, :cost, :on_display)
  end
end