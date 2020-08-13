class BikesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create, :destroy]

    def index 
        bikes = Bike.all
        render json: bikes
    end

    def show 
        bike = Bike.find_by_id(params[:id])
        render json: bike, include: [:repairs]
    end
    
    def create
        user = User.find_by_id(params[:user_id])
        bike = user.bikes.create(name: params[:name], miles: params[:miles], bike_type: params[:bike_type], strava_id: params[:strava_id], date_purchase: params[:date_purchased])
        render json: bike
    end

    def destroy 
        bike = Bike.find_by_id(params[:id])
        bike.repairs.destroy_all
        bike.destroy 
        render json: bike
    end

end
