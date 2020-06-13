class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :create_session
    helper_method :check_current_user

    private

    def require_login
        redirect_to login_path unless session[:user_id]
    end

    def logged_in?
        session[:user_id] ? true : false
    end

    def create_session
        session[:user_id] = @user.id
    end

    def check_current_user
        session[:user_id]
    end

end
