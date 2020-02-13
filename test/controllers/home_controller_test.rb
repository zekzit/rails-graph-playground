require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get set_current_user" do
    get home_set_current_user_url
    assert_response :success
  end

end
