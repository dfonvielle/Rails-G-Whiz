require 'test_helper'

class DesiresControllerTest < ActionController::TestCase
  setup do
    @desire = desires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desire" do
    assert_difference('Desire.count') do
      post :create, desire: @desire.attributes
    end

    assert_redirected_to desire_path(assigns(:desire))
  end

  test "should show desire" do
    get :show, id: @desire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desire.to_param
    assert_response :success
  end

  test "should update desire" do
    put :update, id: @desire.to_param, desire: @desire.attributes
    assert_redirected_to desire_path(assigns(:desire))
  end

  test "should destroy desire" do
    assert_difference('Desire.count', -1) do
      delete :destroy, id: @desire.to_param
    end

    assert_redirected_to desires_path
  end
end
