class TrucksController < ApplicationController

    def index #trucks will be created on the same form as jobs
        @trucks = Truck.all
        # binding.pry
        @trucks = @trucks.uniq{ |t| [t.make, t.color, t.year] }
    end

    def show

    end

end