require 'test_helper'

class IngredientModificationsControllerTest < ActionController::TestCase
  setup do
    @ingredient_modification = ingredient_modifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredient_modifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient_modification" do
    assert_difference('IngredientModification.count') do
      post :create, ingredient_modification: { name: @ingredient_modification.name }
    end

    assert_redirected_to ingredient_modification_path(assigns(:ingredient_modification))
  end

  test "should show ingredient_modification" do
    get :show, id: @ingredient_modification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient_modification
    assert_response :success
  end

  test "should update ingredient_modification" do
    patch :update, id: @ingredient_modification, ingredient_modification: { name: @ingredient_modification.name }
    assert_redirected_to ingredient_modification_path(assigns(:ingredient_modification))
  end

  test "should destroy ingredient_modification" do
    assert_difference('IngredientModification.count', -1) do
      delete :destroy, id: @ingredient_modification
    end

    assert_redirected_to ingredient_modifications_path
  end
end
