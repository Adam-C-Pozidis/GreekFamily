class ShoppingCart < ApplicationRecord
    
    has_many :order_items
    has_many :menu_items, through: :order_items

    before_save :set_total_price

    def total_price
        order_items.map{|item| item.subtotal}.sum
    end
    
    private

    def set_total_price
        self.total_price = total_price
    end

end
