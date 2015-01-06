require 'test_helper'

class IngredientFamiliesControllerTest < ActionController::TestCase
  setup do
    @ingredient_family = ingredient_families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredient_families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient_family" do
    assert_difference('IngredientFamily.count') do
      post :create, ingredient_family: { category_id: @ingredient_family.category_id, name: @ingredient_family.name }
    end

    assert_redirected_to ingredient_family_path(assigns(:ingredient_family))
  end

  test "should show ingredient_family" do
    get :show, id: @ingredient_family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient_family
    assert_response :success
  end

  test "should update ingredient_family" do
    patch :update, id: @ingredient_family, ingredient_family: { category_id: @ingredient_family.category_id, name: @ingredient_family.name }
    assert_redirected_to ingredient_family_path(assigns(:ingredient_family))
  end

  test "should destroy ingredient_family" do
    assert_difference('IngredientFamily.count', -1) do
      delete :destroy, id: @ingredient_family
    end

    assert_redirected_to ingredient_families_path
  end
end
