class RemarksController < ApplicationController
    before_action :set_remark, only: [:show, :update, :destroy]
    def index 
        @remarks = Remark.all

        render json: @remarks
    end 

    def show
        render json: @remark
    end 

    def create
        @remark = Remark.new(remark_params)

            if @remark.save
                render json: @remark, status: :created, location: @remark
            else 
                render json: @remark.errors, status: :unprocessable_entity
            end 
    end 

    def update
    end 

    def destroy
        @remark.destroy
    end 

    private

    def set_remark
        @remark - Remark.find(params[:id])
    end 

    def remark_params
        params.require(:remark),permit(:owner, :content, :meet_id)
    end 
end
