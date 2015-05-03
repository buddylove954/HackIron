require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get addimage" do
    get :addimage
    assert_response :success
  end

end
