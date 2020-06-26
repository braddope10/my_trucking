class BooksController < ApplicationController

    def index 
        @books = Book.all

        @jobs = Job.all
        # binding.pry

        # Book.group(:monthdayyear)

        # Book.all.group_by(&:monthdayyear)
    end

end