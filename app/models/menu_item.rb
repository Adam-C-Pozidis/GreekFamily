class MenuItem < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :shopping_carts, through: :order_items
end
