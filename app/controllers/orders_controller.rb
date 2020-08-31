class OrdersController < ApplicationController
    # homepage menu_item about contact
    def show
    end

    def create
        @order = Order.new(set_order_params)
        @order.user = current_user
        @order.order_items = current_shopping_cart.order_items
        if @order.save!
            redirect_to success_path
            session[:order] = @order
        else
            redirect_to fail_path
        end
    end

    private

    def set_order_params
        params.require(:order).permit(:name_ordered, :address, :phone)
    end
end
