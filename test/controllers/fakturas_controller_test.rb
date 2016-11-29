require 'test_helper'

class FakturasControllerTest < ActionController::TestCase
  setup do
    @faktura = fakturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fakturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faktura" do
    assert_difference('Faktura.count') do
      post :create, faktura: { data: @faktura.data, id: @faktura.id, klient_id: @faktura.klient_id, tytul: @faktura.tytul, wyslana: @faktura.wyslana }
    end

    assert_redirected_to faktura_path(assigns(:faktura))
  end

  test "should show faktura" do
    get :show, id: @faktura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faktura
    assert_response :success
  end

  test "should update faktura" do
    patch :update, id: @faktura, faktura: { data: @faktura.data, id: @faktura.id, klient_id: @faktura.klient_id, tytul: @faktura.tytul, wyslana: @faktura.wyslana }
    assert_redirected_to faktura_path(assigns(:faktura))
  end

  test "should destroy faktura" do
    assert_difference('Faktura.count', -1) do
      delete :destroy, id: @faktura
    end

    assert_redirected_to fakturas_path
  end
end
