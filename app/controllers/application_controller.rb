class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :create_session

    def require_login
        
    end

    def logged_in?
        
    end

    def create_session
        session[:user_id] = @user.id
    end

end
