class BooksController < ApplicationController

    def index
        # @books = Book.filter_duplicates
        @books = Book.all.uniq
    end

end