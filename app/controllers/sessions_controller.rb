class SessionsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            create_session
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        flash[:notice] = "Logged Out!"
        redirect_to '/', noticed: "Logged Out!"
    end

    def fb_create
        # binding.pry
        @user = User.create_facebook_auth(auth)
        if @user
            create_session
            redirect_to user_path(@user)
        else
            redirect_to login_path
        end
    
    end

    private

    def auth
        request.env['omniauth.auth']
    end 

end