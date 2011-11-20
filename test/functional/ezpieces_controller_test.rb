require 'test_helper'

class EzpiecesControllerTest < ActionController::TestCase
  setup do
    @ezpiece = ezpieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ezpieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ezpiece" do
    assert_difference('Ezpiece.count') do
      post :create, ezpiece: @ezpiece.attributes
    end

    assert_redirected_to ezpiece_path(assigns(:ezpiece))
  end

  test "should show ezpiece" do
    get :show, id: @ezpiece.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ezpiece.to_param
    assert_response :success
  end

  test "should update ezpiece" do
    put :update, id: @ezpiece.to_param, ezpiece: @ezpiece.attributes
    assert_redirected_to ezpiece_path(assigns(:ezpiece))
  end

  test "should destroy ezpiece" do
    assert_difference('Ezpiece.count', -1) do
      delete :destroy, id: @ezpiece.to_param
    end

    assert_redirected_to ezpieces_path
  end
end
