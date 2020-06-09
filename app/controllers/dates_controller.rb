class DatesController < ApplicationController

    def index
        @dates = Dates.filter_duplicates
    end

end