class LibrariesController < ApplicationController

  def index
    @libraries = Library.all.sort_by { |book| book.created_at }.reverse
  end

  def new
  end

  def create
    library = Library.create!(library_params)
    library.save!
    redirect_to "/libraries"
  end

  def show
    @library = Library.find(params[:id])
  end

  private

  def library_params
    params.permit(:name, :study_rooms, :free_parking)
  end
end