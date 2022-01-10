require "application_system_test_case"

class SuppliersTest < ApplicationSystemTestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "visiting the index" do
    visit suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "should create supplier" do
    visit suppliers_url
    click_on "New supplier"

    check "Ativo" if @supplier.ativo
    fill_in "Cidade", with: @supplier.cidade
    fill_in "Email", with: @supplier.email
    fill_in "Endereco", with: @supplier.endereco
    fill_in "Estado", with: @supplier.estado
    fill_in "Fantasia", with: @supplier.fantasia
    fill_in "Razaosocial", with: @supplier.razaosocial
    fill_in "Site", with: @supplier.site
    fill_in "Telefone", with: @supplier.telefone
    fill_in "Whatsapp", with: @supplier.whatsapp
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "should update Supplier" do
    visit supplier_url(@supplier)
    click_on "Edit this supplier", match: :first

    check "Ativo" if @supplier.ativo
    fill_in "Cidade", with: @supplier.cidade
    fill_in "Email", with: @supplier.email
    fill_in "Endereco", with: @supplier.endereco
    fill_in "Estado", with: @supplier.estado
    fill_in "Fantasia", with: @supplier.fantasia
    fill_in "Razaosocial", with: @supplier.razaosocial
    fill_in "Site", with: @supplier.site
    fill_in "Telefone", with: @supplier.telefone
    fill_in "Whatsapp", with: @supplier.whatsapp
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Supplier" do
    visit supplier_url(@supplier)
    click_on "Destroy this supplier", match: :first

    assert_text "Supplier was successfully destroyed"
  end
end
