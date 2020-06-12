class TrucksController < ApplicationController

    def index #trucks will be created on the same form as jobs
        @trucks = Truck.all.uniq
    end

end