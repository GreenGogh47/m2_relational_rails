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

  def edit
    @library = Library.find(params[:id]) 
  end

  def update
    library = Library.find(params[:id])
    library.update!(library_params)
    redirect_to "/libraries/#{library.id}"
  end
  
  private

  def library_params
    params.permit(:name, :study_rooms, :free_parking)
  end
end