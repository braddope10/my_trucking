class JobsController < ApplicationController

    def index

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def job_params
        params.require(:job).permit(
            :start_time, 
            :end_time, 
            :material, 
            :weight, 
            :dropoff, 
            :pickup, 
            :driver,
            :contact_name,
            :contact_number,
            :hourly_rate,
            :po_number

        )
            binding.pry
    end

end