require 'test_helper'

class EzprojectsControllerTest < ActionController::TestCase
  setup do
    @ezproject = ezprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ezprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ezproject" do
    assert_difference('Ezproject.count') do
      post :create, ezproject: @ezproject.attributes
    end

    assert_redirected_to ezproject_path(assigns(:ezproject))
  end

  test "should show ezproject" do
    get :show, id: @ezproject.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ezproject.to_param
    assert_response :success
  end

  test "should update ezproject" do
    put :update, id: @ezproject.to_param, ezproject: @ezproject.attributes
    assert_redirected_to ezproject_path(assigns(:ezproject))
  end

  test "should destroy ezproject" do
    assert_difference('Ezproject.count', -1) do
      delete :destroy, id: @ezproject.to_param
    end

    assert_redirected_to ezprojects_path
  end
end
