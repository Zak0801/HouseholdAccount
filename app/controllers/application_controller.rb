class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def identify_login_user
        if @current_user
          flash[:notice] = "ログインしています"
          redirect_to("/item/index")
        end
    end
    
    
end
