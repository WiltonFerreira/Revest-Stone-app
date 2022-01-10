require "application_system_test_case"

class RecursosTest < ApplicationSystemTestCase
  setup do
    @recurso = recursos(:one)
  end

  test "visiting the index" do
    visit recursos_url
    assert_selector "h1", text: "Recursos"
  end

  test "should create recurso" do
    visit recursos_url
    click_on "New recurso"

    check "Ativo" if @recurso.ativo
    fill_in "Grupo recurso", with: @recurso.grupo_recurso_id
    fill_in "Medida", with: @recurso.medida
    fill_in "Nome", with: @recurso.nome
    fill_in "Nome curto", with: @recurso.nome_curto
    click_on "Create Recurso"

    assert_text "Recurso was successfully created"
    click_on "Back"
  end

  test "should update Recurso" do
    visit recurso_url(@recurso)
    click_on "Edit this recurso", match: :first

    check "Ativo" if @recurso.ativo
    fill_in "Grupo recurso", with: @recurso.grupo_recurso_id
    fill_in "Medida", with: @recurso.medida
    fill_in "Nome", with: @recurso.nome
    fill_in "Nome curto", with: @recurso.nome_curto
    click_on "Update Recurso"

    assert_text "Recurso was successfully updated"
    click_on "Back"
  end

  test "should destroy Recurso" do
    visit recurso_url(@recurso)
    click_on "Destroy this recurso", match: :first

    assert_text "Recurso was successfully destroyed"
  end
end
