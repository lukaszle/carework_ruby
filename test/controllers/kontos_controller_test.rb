require 'test_helper'

class KontosControllerTest < ActionController::TestCase
  setup do
    @konto = kontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konto" do
    assert_difference('Konto.count') do
      post :create, konto: { id: @konto.id, klient_id: @konto.klient_id, konto: @konto.konto }
    end

    assert_redirected_to konto_path(assigns(:konto))
  end

  test "should show konto" do
    get :show, id: @konto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konto
    assert_response :success
  end

  test "should update konto" do
    patch :update, id: @konto, konto: { id: @konto.id, klient_id: @konto.klient_id, konto: @konto.konto }
    assert_redirected_to konto_path(assigns(:konto))
  end

  test "should destroy konto" do
    assert_difference('Konto.count', -1) do
      delete :destroy, id: @konto
    end

    assert_redirected_to kontos_path
  end
end
