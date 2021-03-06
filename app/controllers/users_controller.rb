require 'pry'

class UsersController < ApplicationController

    def new
        @user = User.new
    end

    # No index method because I don't want to show another users private information

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @books = Book.all.count
        @jobs = Job.all.count
        @brokers = Broker.all.count
        @trucks = Truck.all.count
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end

