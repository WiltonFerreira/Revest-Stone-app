require "test_helper"

class TabelaComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tabela_compra = tabela_compras(:one)
  end

  test "should get index" do
    get tabela_compras_url
    assert_response :success
  end

  test "should get new" do
    get new_tabela_compra_url
    assert_response :success
  end

  test "should create tabela_compra" do
    assert_difference("TabelaCompra.count") do
      post tabela_compras_url, params: { tabela_compra: { ativo: @tabela_compra.ativo, data: @tabela_compra.data, recurso_id: @tabela_compra.recurso_id, supplier_id: @tabela_compra.supplier_id, valor: @tabela_compra.valor } }
    end

    assert_redirected_to tabela_compra_url(TabelaCompra.last)
  end

  test "should show tabela_compra" do
    get tabela_compra_url(@tabela_compra)
    assert_response :success
  end

  test "should get edit" do
    get edit_tabela_compra_url(@tabela_compra)
    assert_response :success
  end

  test "should update tabela_compra" do
    patch tabela_compra_url(@tabela_compra), params: { tabela_compra: { ativo: @tabela_compra.ativo, data: @tabela_compra.data, recurso_id: @tabela_compra.recurso_id, supplier_id: @tabela_compra.supplier_id, valor: @tabela_compra.valor } }
    assert_redirected_to tabela_compra_url(@tabela_compra)
  end

  test "should destroy tabela_compra" do
    assert_difference("TabelaCompra.count", -1) do
      delete tabela_compra_url(@tabela_compra)
    end

    assert_redirected_to tabela_compras_url
  end
end
