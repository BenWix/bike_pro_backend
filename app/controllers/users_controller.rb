class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index 
        users = User.all
        render json: users, only: [:id, :name, :email]
    end

    def show 
        user = User.find_by_id(params[:id])
        render json: user, include: [:bikes]
    end


    def create 
        user = User.create(name: params[:name], email: params[:email], phone: params[:phone])
        render json: user, only: [:id, :name, :email]
    end
end
