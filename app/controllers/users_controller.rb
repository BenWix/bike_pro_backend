class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index 
        users = User.all
        render json: users
    end

    def create 
        binding.pry
        user = User.create(name: params[:name], email: params[:email], phone: params[:phone])
        render json: user
    end
end
