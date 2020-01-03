class SessionsController < ApplicationController

    def create
        member = Member.find_by(username: params[:username])
        if member && member.authenticate(params[:password])
            session[:member_id] = member.id
            redirect_to member
        else
            flash[:message] = "Invalid username or password"
            redirect_to new_session_path
        end
    end

    def new

    end

    def destroy
        session.delete(:member_id)
        redirect_to new_session_path
    end

end