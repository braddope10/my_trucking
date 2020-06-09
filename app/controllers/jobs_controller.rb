class JobsController < ApplicationController

    before_action :require_login

    def index
        @jobs = Job.all 
    end

    def new
        @job = Job.new
        @job.build_truck
        @job.build_broker
        @job.build_date
    end

    def create
        @job = Job.new(job_params)
        @job.user_id = session[:user_id]
        if @job.save
            redirect_to job_path(@job)
        else
            render :new
        end
    end

    def show
        @job = Job.find_by(id: params[:id])
        @broker = @job.
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
    end

end