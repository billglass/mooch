require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get title" do
    get :title
    assert_response :success
  end

  test "should get body" do
    get :body
    assert_response :success
  end

  test "should get location" do
    get :location
    assert_response :success
  end

  test "should get incentive" do
    get :incentive
    assert_response :success
  end

end
