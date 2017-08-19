require 'test_helper'

class PiezasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pieza = piezas(:one)
  end

  test "should get index" do
    get piezas_url
    assert_response :success
  end

  test "should get new" do
    get new_pieza_url
    assert_response :success
  end

  test "should create pieza" do
    assert_difference('Pieza.count') do
      post piezas_url, params: { pieza: { compra: @pieza.compra, nombrepieza: @pieza.nombrepieza, numero: @pieza.numero, venta: @pieza.venta } }
    end

    assert_redirected_to pieza_url(Pieza.last)
  end

  test "should show pieza" do
    get pieza_url(@pieza)
    assert_response :success
  end

  test "should get edit" do
    get edit_pieza_url(@pieza)
    assert_response :success
  end

  test "should update pieza" do
    patch pieza_url(@pieza), params: { pieza: { compra: @pieza.compra, nombrepieza: @pieza.nombrepieza, numero: @pieza.numero, venta: @pieza.venta } }
    assert_redirected_to pieza_url(@pieza)
  end

  test "should destroy pieza" do
    assert_difference('Pieza.count', -1) do
      delete pieza_url(@pieza)
    end

    assert_redirected_to piezas_url
  end
end
