require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  test "should get home" do
    get '/home'
    assert_response :success
    assert_select "title", "Home | Private Events"
  end
  
  test "should get root" do
    get '/'
    assert_response :success
  end
end
