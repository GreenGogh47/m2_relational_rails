class Library < ApplicationRecord
  def index
    @libraries = Library.all
  end
end
