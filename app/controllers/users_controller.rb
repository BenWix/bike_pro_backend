class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create, :destroy]

    def index 
        users = User.all
        render json: users, only: [:id, :name, :email], include: [:bikes]
    end

    def show 
        user = User.find_by_id(params[:id])
        render json: user, include: [:bikes]
    end


    def create 
        user = User.create(name: params[:name], email: params[:email], phone: params[:phone])
        render json: user, include: [:bikes]
    end

    def destroy
        user = User.find_by_id(params[:id])
        user.bikes.each {|bike| bike.repairs.destroy_all}
        user.bikes.destroy_all
        user.destroy
    
        render json: user
    end
end
