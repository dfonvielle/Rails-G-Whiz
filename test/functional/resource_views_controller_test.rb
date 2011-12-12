require 'test_helper'

class ResourceViewsControllerTest < ActionController::TestCase
  setup do
    @resource_view = resource_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_view" do
    assert_difference('ResourceView.count') do
      post :create, resource_view: @resource_view.attributes
    end

    assert_redirected_to resource_view_path(assigns(:resource_view))
  end

  test "should show resource_view" do
    get :show, id: @resource_view.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_view.to_param
    assert_response :success
  end

  test "should update resource_view" do
    put :update, id: @resource_view.to_param, resource_view: @resource_view.attributes
    assert_redirected_to resource_view_path(assigns(:resource_view))
  end

  test "should destroy resource_view" do
    assert_difference('ResourceView.count', -1) do
      delete :destroy, id: @resource_view.to_param
    end

    assert_redirected_to resource_views_path
  end
end
