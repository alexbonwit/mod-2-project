module ApplicationHelper

    def logged_in?
        !!current_member
    end

    def current_member
        @current_member ||= Member.find_by(id: session[:member_id])
    end

    def authorize!
        if !logged_in?
            redirect_to login_path
        end 
    end

    def flash_message
        @_msg ||= flash[:message]
    end

end
