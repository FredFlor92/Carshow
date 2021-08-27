class RemarksController < ApplicationController

    def index 
        @remarks = Remark.all

        render json: @remarks
    end 

    def show
        render json: @remark
    end 

    def create
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
        params.require(:comment),permit(:owner, :content, :meet_id)
    end 
end
