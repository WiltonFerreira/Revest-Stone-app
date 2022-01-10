require "application_system_test_case"

class TabelaComprasTest < ApplicationSystemTestCase
  setup do
    @tabela_compra = tabela_compras(:one)
  end

  test "visiting the index" do
    visit tabela_compras_url
    assert_selector "h1", text: "Tabela compras"
  end

  test "should create tabela compra" do
    visit tabela_compras_url
    click_on "New tabela compra"

    check "Ativo" if @tabela_compra.ativo
    fill_in "Data", with: @tabela_compra.data
    fill_in "Recurso", with: @tabela_compra.recurso_id
    fill_in "Supplier", with: @tabela_compra.supplier_id
    fill_in "Valor", with: @tabela_compra.valor
    click_on "Create Tabela compra"

    assert_text "Tabela compra was successfully created"
    click_on "Back"
  end

  test "should update Tabela compra" do
    visit tabela_compra_url(@tabela_compra)
    click_on "Edit this tabela compra", match: :first

    check "Ativo" if @tabela_compra.ativo
    fill_in "Data", with: @tabela_compra.data
    fill_in "Recurso", with: @tabela_compra.recurso_id
    fill_in "Supplier", with: @tabela_compra.supplier_id
    fill_in "Valor", with: @tabela_compra.valor
    click_on "Update Tabela compra"

    assert_text "Tabela compra was successfully updated"
    click_on "Back"
  end

  test "should destroy Tabela compra" do
    visit tabela_compra_url(@tabela_compra)
    click_on "Destroy this tabela compra", match: :first

    assert_text "Tabela compra was successfully destroyed"
  end
end
