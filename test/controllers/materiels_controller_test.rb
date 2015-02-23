require 'test_helper'

class MaterielsControllerTest < ActionController::TestCase
  setup do
    @materiel = materiels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiel" do
    assert_difference('Materiel.count') do
      post :create, materiel: { availability: @materiel.availability, description: @materiel.description, name: @materiel.name, price: @materiel.price }
    end

    assert_redirected_to materiel_path(assigns(:materiel))
  end

  test "should show materiel" do
    get :show, id: @materiel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiel
    assert_response :success
  end

  test "should update materiel" do
    patch :update, id: @materiel, materiel: { availability: @materiel.availability, description: @materiel.description, name: @materiel.name, price: @materiel.price }
    assert_redirected_to materiel_path(assigns(:materiel))
  end

  test "should destroy materiel" do
    assert_difference('Materiel.count', -1) do
      delete :destroy, id: @materiel
    end

    assert_redirected_to materiels_path
  end
end
