require 'test_helper'

class ModelAttributesControllerTest < ActionController::TestCase
  setup do
    @model_attribute = model_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_attribute" do
    assert_difference('ModelAttribute.count') do
      post :create, model_attribute: @model_attribute.attributes
    end

    assert_redirected_to model_attribute_path(assigns(:model_attribute))
  end

  test "should show model_attribute" do
    get :show, id: @model_attribute.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_attribute.to_param
    assert_response :success
  end

  test "should update model_attribute" do
    put :update, id: @model_attribute.to_param, model_attribute: @model_attribute.attributes
    assert_redirected_to model_attribute_path(assigns(:model_attribute))
  end

  test "should destroy model_attribute" do
    assert_difference('ModelAttribute.count', -1) do
      delete :destroy, id: @model_attribute.to_param
    end

    assert_redirected_to model_attributes_path
  end
end
