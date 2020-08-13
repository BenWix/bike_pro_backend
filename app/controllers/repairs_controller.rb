class RepairsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index 
        repairs = Repair.all
        render json: repairs
    end

    def create 
        bike = Bike.find_by_id(params[:bike_id])
        repair = bike.repairs.create(repair_type: params[:repair_type], miles: params[:miles], description: params[:description], date: params[:date])
        render json: repair
    end

end


