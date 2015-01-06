require 'test_helper'

class IngredientInventoriesControllerTest < ActionController::TestCase
  setup do
    @ingredient_inventory = ingredient_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredient_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient_inventory" do
    assert_difference('IngredientInventory.count') do
      post :create, ingredient_inventory: { amount: @ingredient_inventory.amount, ingredient_id: @ingredient_inventory.ingredient_id, user_id: @ingredient_inventory.user_id }
    end

    assert_redirected_to ingredient_inventory_path(assigns(:ingredient_inventory))
  end

  test "should show ingredient_inventory" do
    get :show, id: @ingredient_inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient_inventory
    assert_response :success
  end

  test "should update ingredient_inventory" do
    patch :update, id: @ingredient_inventory, ingredient_inventory: { amount: @ingredient_inventory.amount, ingredient_id: @ingredient_inventory.ingredient_id, user_id: @ingredient_inventory.user_id }
    assert_redirected_to ingredient_inventory_path(assigns(:ingredient_inventory))
  end

  test "should destroy ingredient_inventory" do
    assert_difference('IngredientInventory.count', -1) do
      delete :destroy, id: @ingredient_inventory
    end

    assert_redirected_to ingredient_inventories_path
  end
end
