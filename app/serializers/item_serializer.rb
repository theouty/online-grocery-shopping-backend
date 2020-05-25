class ItemSerializer < ActiveModel::Serializer
  attributes :id, :price, :category, :inm_url
end
