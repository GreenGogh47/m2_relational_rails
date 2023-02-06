class LibrariesController < ApplicationController

  def index
    @libraries = Library.all.sort_by { |book| book.created_at }.reverse
  end

  def show
    @library = Library.find(params[:id])
  end
end