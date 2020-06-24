class JobsController < ApplicationController

    before_action :require_login
    before_action :find_job, only: [:edit, :update, :destroy]

    def index
        @job = Job.find_by(id: params[:book_id])
    end

    def new
        @job = Job.new
        @job.build_truck
        @job.build_broker
        @job.build_book
    end

    def create
        # @job = Job.new(job_params)
        @job = Job.new(job_params)
        # binding.pry
        @job.user_id = session[:user_id]
        # binding.pry
        if @job.save
            # binding.pry
            redirect_to job_path(@job)
        else
            render :new
        end
    end

    def show #Shows most recently created job along with all its details
        # @job = Job.find_by(id: params[:id])
        # @book = Book.find_by(id: params[:id])
        @jobs = Job.all
        @job = Job.last
        # @book = Book.last
        # @broker = Broker.last
        # @truck = Truck.last
        # binding.pry
        # I want to be able to show driver, date, and broker as well
    end

    def edit
        
        # I want to be able to edit driver, date, and broker
    end

    def update
        
        if @job.update(job_params)
            redirect_to job_path
        else
            render :edit
        end
    end

    def destroy
        
        if check_current_user != @job.user_id
            redirect_to user_path(session[:user_id])
        else
            @job.destroy
            redirect_to user_path
        end
        # @job = Job.find_by(id: params[:id])
        # if @job && @job.user == current_user
        #     @job.destroy
        #     redirect_to jobs_path
        # else
        #     redirect_to jobs_path
        # end

    end

    private

    def find_job
        @job = Job.find_by(id: params[:id])
    end

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
            :po_number, 
            book_attributes: [:monthdayyear, :_destroy],
            broker_attributes: [:name, :_destroy],
            truck_attributes: [:make, :year, :color, :_destroy])
    end

end