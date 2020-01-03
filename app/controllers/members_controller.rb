class MembersController < ApplicationController
    before_action :authorize!, except: [:new, :create]

    def index
        @members = Member.all
    end

    def show
        @member = Member.find_by(id: params[:id])
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.new(member_params(:username, :full_name, :birth_date, :death_date, :grave_gang_id, :theme_id, :password))
        if @member.save
            session[:member_id] = @member.id
            redirect_to member_path(@member)
        else
            flash[:message] = @member.errors.full_messages
            redirect_to new_member_path
        end
    end

    def edit
        @member = Member.find_by(id: params[:id])
    end

    def update
        @member = Member.find_by(id: params[:id])
        if @member.update(member_params(:name, :birth_date, :death_date, :grave_gang_id, :theme_id, :password))
            redirect_to @member
        else
            flash[:message] = @member.errors.full_messages
        end
    end

    def destroy
        @member = Member.find_by(id: params[:id])
        @member.destroy
        redirect_to new_member_path
    end


    private

    def member_params(*args)
        params.require(:member).permit(*args)
    end
end