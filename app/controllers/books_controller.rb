class BooksController < ApplicationController

    def index 
        @books = Book.all
        @jobs = Job.all
    end

end