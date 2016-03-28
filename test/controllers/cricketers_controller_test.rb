require 'test_helper'

class CricketersControllerTest < ActionController::TestCase
  setup do
    @cricketer = cricketers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cricketers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cricketer" do
    assert_difference('Cricketer.count') do
      post :create, cricketer: { country: @cricketer.country, description: @cricketer.description, fullname: @cricketer.fullname, posted_from: @cricketer.posted_from }
    end

    assert_redirected_to cricketer_path(assigns(:cricketer))
  end

  test "should show cricketer" do
    get :show, id: @cricketer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cricketer
    assert_response :success
  end

  test "should update cricketer" do
    patch :update, id: @cricketer, cricketer: { country: @cricketer.country, description: @cricketer.description, fullname: @cricketer.fullname, posted_from: @cricketer.posted_from }
    assert_redirected_to cricketer_path(assigns(:cricketer))
  end

  test "should destroy cricketer" do
    assert_difference('Cricketer.count', -1) do
      delete :destroy, id: @cricketer
    end

    assert_redirected_to cricketers_path
  end
end
