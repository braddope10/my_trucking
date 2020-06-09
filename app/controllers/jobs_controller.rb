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
        # I want to be able to show driver, date, and broker as well
    end

    def edit
        @job = Job.find_by(id: params[:id])
        # I want to be able to edit driver, date, and broker
    end

    def update
        @job = Job.find_by(id: params[:id])
        if @job.update(job_params)
            redirect_to jobs_path
        else
            render :edit
        end
    end

    def destroy
        @job = Job.find_by(id: params[:id])
        if @job && @job.user == current_user
            @job.destroy
            redirect_to jobs_path
        else
            redirect_to jobs_path
        end
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