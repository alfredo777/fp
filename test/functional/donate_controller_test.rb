require 'test_helper'

class DonateControllerTest < ActionController::TestCase
  test "should get prayer" do
    get :prayer
    assert_response :success
  end

end
