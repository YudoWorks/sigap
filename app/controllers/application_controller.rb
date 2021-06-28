class ApplicationController < ActionController::Base
    before_action :authorize_user

    def authorize_user
        @currentUser = User.find_by(id: session[:user_id])
    end

    def not_authorized
        if @currentUser
            redirect_to('/')
        end
    end

    def authorized
        if @currentUser == nil
            redirect_to('/')
        end
    end
    
end
