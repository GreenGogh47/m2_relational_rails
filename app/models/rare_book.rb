class RareBook < ApplicationRecord
    belongs_to :library

    def index
        @rare_books = RareBook.all
    end
end
