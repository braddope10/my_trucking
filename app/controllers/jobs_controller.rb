class JobsController < ApplicationController

    before_action :require_login
    before_action :find_job, only: [:edit, :update, :destroy]

    def index
        # 'books/1/jobs'
        # if params[:book_id]
        #     #find the book
        #     #@jobs = book.jobs
        # else
        #     '/jobs'
        #     @jobs = Job.all
        # end
        # @job = Job.find_by(id: params[:book_id])


        @jobs = Job.all.sort_by{ |j| j[:id] }.reverse!
        
    end

    def new
        @job = Job.new
        @job.build_truck
        @job.build_broker
        @job.build_book
    end

    def create 
        @job = current_user.jobs.new(job_params)
        # binding.pry
        if @job.save
            redirect_to jobs_path
        else
            render :new
        end
    end

    def show #find a way for the 
        # 'jobs/12' #Shows most recently created job along with all its details
        # @jobs = Job.all
        # @job = Job.all.last
        
        @job = Job.find_by_id(params[:id])
        @book = Book.find_by_id(params[:id])
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