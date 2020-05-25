class CartItemsController < ApplicationController
    def index
        cart_items = CartItem.where("user_id = ?", params[:user_id])
        render json: cart_items.to_json(except: [:created_at, :updated_at])
    end

    def create
        cart_item = CartItem.create(set_params)
        render json: cart_item.to_json(except: [:created_at, :updated_at])
    end

    def update
        cart_item = CartItem.update(set_params)
        render json: cart_item.to_json(except: [:created_at, :updated_at])
    end

    def destroy
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
    end

    private

    def set_params
        params.require(:cart_item).permit(:user_id, :item_id, :quantity)
    end
end
