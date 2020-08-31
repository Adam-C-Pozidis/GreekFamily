class OrderItemsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[create]
    
    def create
        
        if OrderItem.where("menu_item_id = ? AND shopping_cart_id = ?", params[:order_item][:menu_item_id], current_shopping_cart.id.to_s).empty?
            @order_item = OrderItem.new(order_item_params)
            @order_item.shopping_cart = current_shopping_cart
            @order_item.save!
        else
            @order_item = OrderItem.where("menu_item_id = ? AND shopping_cart_id = ?", params[:order_item][:menu_item_id], current_shopping_cart.id).first
            quantity = @order_item.quantity += params[:order_item][:quantity].to_i
            @order_item.update(quantity: quantity)
        end 
        
    end

    private

    def order_item_params
        params.require(:order_item).permit(:menu_item_id, :quantity)
    end
end
