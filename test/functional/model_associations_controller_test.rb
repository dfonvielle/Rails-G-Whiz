require 'test_helper'

class ModelAssociationsControllerTest < ActionController::TestCase
  setup do
    @model_association = model_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_association" do
    assert_difference('ModelAssociation.count') do
      post :create, model_association: @model_association.attributes
    end

    assert_redirected_to model_association_path(assigns(:model_association))
  end

  test "should show model_association" do
    get :show, id: @model_association.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_association.to_param
    assert_response :success
  end

  test "should update model_association" do
    put :update, id: @model_association.to_param, model_association: @model_association.attributes
    assert_redirected_to model_association_path(assigns(:model_association))
  end

  test "should destroy model_association" do
    assert_difference('ModelAssociation.count', -1) do
      delete :destroy, id: @model_association.to_param
    end

    assert_redirected_to model_associations_path
  end
end
