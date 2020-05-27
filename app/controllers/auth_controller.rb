class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:auth][:username])
        if user
            render json: user.to_json(except: [:created_at, :updated_at])
        else
            render json: {error: 'That user could not be found'}, status: 401
        end
    end
end
