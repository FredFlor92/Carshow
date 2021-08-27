class CarmeetsController < ApplicationController
    before_action :set_carmeet, only: [:show, :update, :destroy]
    def index 
        @carmeets = Carmeet.all

        render json: @carmeets
    end 

    def show
        render json: @carmeet
    end 

    def create
        @carmeet = Carmeet.new(carmeet_params)

        if carmeet.save
            render json: @carmeet, status: :created, :location: @carmeet
        else
            render json: @carmeet.errors, status: :unprocessable_entity
        end 
    end 

    def update
        if @carmeet.update(carmeet_params)
            render json: @carmeet
        else
            render json: @carmeet.errors, status: :unprocessable_entity
    end 

    def destroy
        @carmeet.destroy
    end 

    private 

    def set_carmeet
        @carmeet = Carmeet.find(params[:id])
    end 

    def carmeet_params
        params.require(:meet).permit(:time, :date, :location, :title, :owner)
    end 
end
