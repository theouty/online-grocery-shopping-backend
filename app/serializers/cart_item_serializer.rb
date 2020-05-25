class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_id, :quantity
end
