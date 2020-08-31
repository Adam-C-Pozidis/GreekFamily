require 'test_helper'

class MenuItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get menu_items_show_url
    assert_response :success
  end

end
