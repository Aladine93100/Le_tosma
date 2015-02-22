require 'test_helper'

class MatosControllerTest < ActionController::TestCase
  setup do
    @mato = matos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mato" do
    assert_difference('Mato.count') do
      post :create, mato: { availability: @mato.availability, description: @mato.description, name: @mato.name, price: @mato.price }
    end

    assert_redirected_to mato_path(assigns(:mato))
  end

  test "should show mato" do
    get :show, id: @mato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mato
    assert_response :success
  end

  test "should update mato" do
    patch :update, id: @mato, mato: { availability: @mato.availability, description: @mato.description, name: @mato.name, price: @mato.price }
    assert_redirected_to mato_path(assigns(:mato))
  end

  test "should destroy mato" do
    assert_difference('Mato.count', -1) do
      delete :destroy, id: @mato
    end

    assert_redirected_to matos_path
  end
end
