class LibrariesController < ApplicationController
  has_many :rare_books

  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
  end
end