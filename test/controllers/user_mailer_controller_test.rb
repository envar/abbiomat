require 'test_helper'

class UserMailerControllerTest < ActionController::TestCase
  test "should get send_new_user_message" do
    get :send_new_user_message
    assert_response :success
  end

end
