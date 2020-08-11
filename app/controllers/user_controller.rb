class UserController < ApplicationController

    def index 
        users = User.all
        render json: users
    end

    def create 
        user = User.create(name: params[:name], email: params[:email], phone: params[:phone])
    
        render json: user
    end
end
