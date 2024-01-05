require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get orders__form_url
    assert_response :success
  end
end
