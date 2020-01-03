class GraveGangsController < ApplicationController

    def index
        @grave_gangs = GraveGang.all
    end

    def show
        @grave_gang = GraveGang.find_by(id: params[:id])
    end

    def new
        @grave_gang = GraveGang.new
    end

    def create
        @grave_gang = GraveGang.new(grave_gang_params(:name, :location_id))
        if @grave_gang.save
            redirect_to @grave_gang
        else
            flash[:errors] = @grave_gang.errors.full_messages
            flash[:name] = params[:grave_gang][:name]
            flash[:location_id] = params[:grave_gang][:location_id] 
            render :new
        end
    end

    def edit
        @grave_gang = GraveGang.find_by(id: params[:id])
    end

    def update
        @grave_gang = GraveGang.find_by(id: params[:id])
        if @grave_gang.update(grave_gang_params(:name, :location_id))
            redirect_to @grave_gang
        else
            flash[:errors] = @grave_gang.errors.full_messages
            flash[:name] = params[:grave_gang][:name]
            flash[:location_id] = params[:grave_gang][:location_id]
            render :edit
        end
    end

    private

    def grave_gang_params(*args)
        params.permit(:grave_gang).require(*args)
    end


end