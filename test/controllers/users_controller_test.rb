require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  #global, root
  test "should get root" do
    get FILL_IN
    assert_response FILL_IN
  end

  test "should get home" do
    get users_home_url
    assert_response :success
  end

end


