class EntertainmentsController < ApplicationController
    
    def index
        @entertainments = Entertainment.all
    end

    def show
        @entertainment = Entertainment.find_by(id: params[:id])
    end

    def new
        @entertainment = Entertainment.new
    end

    def create
        @entertainment = Entertainment.new(entertainment_params(:title, :description))
        if @entertainment.save
            redirect_to @entertainment
        else
            flash[:errors] = @entertainment.errors.full_messages
            flash[:title] = params[:entertainment][:title]
            flash[:description] = params[:entertainment][:description] 
            render :new
        end
    end

    def edit
        @entertainment = Entertainment.find_by(id: params[:id])
    end

    def update
        @entertainment = Entertainment.find_by(id: params[:id])
        if @entertainment.update(entertainment_params(:title, :description))
            redirect_to @entertainment
        else
            flash[:errors] = @entertainment.errors.full_messages
            flash[:title] = params[:entertainment][:title]
            flash[:description] = params[:entertainment][:description]
            render :edit
        end
    end

    private

    def entertainment_params(*args)
        params.permit(:entertainment).require(*args)
    end
end