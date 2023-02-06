class LibraryRareBooksController < ApplicationController
  def index
    # require 'pry'; binding.pry
    @library = Library.find(params[:id])
    @rare_books = @library.rare_books
  end
end