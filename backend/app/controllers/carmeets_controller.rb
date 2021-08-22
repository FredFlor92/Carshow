class CarmeetsController < ApplicationController

    def index 
        @carmeets = Carmeet.all

        render json: @carmeets
    end 

    def show
        render json: @carmeet
    end 

    def create
    end 

    def update
    end 

    def destroy
        @carmeet.destroy
    end 

    private 

    def set_carmeet
    end 

    def carmeet_params
    end 
end
