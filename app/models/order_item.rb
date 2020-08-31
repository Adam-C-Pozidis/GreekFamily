class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order, optional: true
  belongs_to :shopping_cart

  before_save :set_sub_total

  private

  def set_sub_total
    self[:subtotal] = (menu_item.price * quantity)
  end

end
