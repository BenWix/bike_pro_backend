class BikesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index 
        bikes = Bike.all
        render json: bikes
    end

    def show 
        bike = Bike.find_by_id(params[:id])
        render json: bike
    end
    
    def create
        user = User.find_by_id(params[:user_id])
        bike = user.bikes.create(name: params[:name], miles: params[:miles], bike_type: params[:bike_type], strava_id: params[:strava_id])
        render json: bike
    end

end
