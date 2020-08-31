class MenuItemsController < ApplicationController
  before_action :set_menu_item

  def show
  end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end
end
