class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user.to_json(except: [:created_at, :updated_at])
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user.to_json(except: [:created_at, :updated_at])
        else
            render json: {error: 'That user could not be found'}, status: 401
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
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
