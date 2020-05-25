class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items.to_json(except: [:created_at, :updated_at])
    end

    def show
        item = Item.find(params[:id])
        render json: item.to_json(except: [:created_at, :updated_at])
    end
end
