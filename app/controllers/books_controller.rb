class BooksController < ApplicationController

    def index
        # @books = Book.filter_duplicates
        
        @books = Book.all
        # @books = @books.uniq{ |b| b.monthdayyear }


        # @books.filter_duplicates

        # @books.last
        # @books = @books.select(:monthdayyear).distinct
        # @books = @books.group_by(&:monthdayyear)

        # @books = @books.uniq{ |b| b.monthdayyear }
        # binding.pry
    end

end