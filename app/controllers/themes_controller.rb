class ThemesController < ApplicationController
    
    def index
        @themes = Theme.all
    end

    def show
        @theme = Theme.find_by(id: params[:id])
    end

    def new
        @theme = Theme.new
    end

    def create
        @theme = Theme.new(theme_params(:title, :description))
        if @theme.save
            redirect_to @theme
        else
            flash[:errors] = @theme.errors.full_messages
            flash[:title] = params[:theme][:title]
            flash[:description] = params[:theme][:description] 
            render :new
        end
    end

    def edit
        @theme = Theme.find_by(id: params[:id])
    end

    def update
        @theme = Theme.find_by(id: params[:id])
        if @theme.update(theme_params(:title, :description))
            redirect_to @theme
        else
            flash[:errors] = @theme.errors.full_messages
            flash[:title] = params[:theme][:title]
            flash[:description] = params[:theme][:description]
            render :edit
        end
    end

    private

    def theme_params(*args)
        params.permit(:theme).require(*args)
    end
end