class PagesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: :index

  before_action :set_shopping_cart

  def index
    @order_item = OrderItem.new
    @vorspeise = MenuItem.where(food_type: "vorspeise").order(:place)
    @salate = MenuItem.where(food_type: "salat").order(:place)
    @empfehlungen = MenuItem.where(food_type: "empfehlung").order(:place)
    @hauptgerichte = MenuItem.where(food_type: "hauptgericht").order(:place)
  end

  def confirmation
    @order = Order.new
  end

  def success
    @order = Order.find(session[:order]["id"])
    session[:shopping_cart] = ShoppingCart.create
  end

  def fail
  end

  private

  def set_shopping_cart
    @shopping_cart = current_shopping_cart
  end
  
end
