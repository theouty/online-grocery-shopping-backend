class User < ApplicationRecord
    has_secure_password
    has_many :cart_items
    has_many :items, through: :cart_items

    validates :username, uniqueness: true
end
