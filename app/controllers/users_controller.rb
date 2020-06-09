class UsersController < ApplicationController

    def new
        @user = User.new
    end

    # No index method because I don't want to show another users private information

    def create
        @user = User.new(user_params)
        if @user.save
            
        else
            render :new
        end
    end

    def show

    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end

