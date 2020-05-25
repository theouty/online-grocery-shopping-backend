class UsersController < ApplicationController
    def show
        user = User.find_by(username: params[:username])
        render json: user.to_json(except: [:created_at, :updated_at])
    end

    def create
        user = User.create(user_params)
        render json: user.to_json(except: [:created_at, :updated_at])
    end

    def update
        user = User.update(user_params)
        render json: user.to_json(except: [:created_at, :updated_at])
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :color, :address, :wallet)
    end
end
