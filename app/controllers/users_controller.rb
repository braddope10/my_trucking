class UsersController < ApplicationController

    def new

    end

    def index

    end

    def create

    end

    def show
        
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end

