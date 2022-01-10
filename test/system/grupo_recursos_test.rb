require "application_system_test_case"

class GrupoRecursosTest < ApplicationSystemTestCase
  setup do
    @grupo_recurso = grupo_recursos(:one)
  end

  test "visiting the index" do
    visit grupo_recursos_url
    assert_selector "h1", text: "Grupo recursos"
  end

  test "should create grupo recurso" do
    visit grupo_recursos_url
    click_on "New grupo recurso"

    fill_in "Nome", with: @grupo_recurso.nome
    click_on "Create Grupo recurso"

    assert_text "Grupo recurso was successfully created"
    click_on "Back"
  end

  test "should update Grupo recurso" do
    visit grupo_recurso_url(@grupo_recurso)
    click_on "Edit this grupo recurso", match: :first

    fill_in "Nome", with: @grupo_recurso.nome
    click_on "Update Grupo recurso"

    assert_text "Grupo recurso was successfully updated"
    click_on "Back"
  end

  test "should destroy Grupo recurso" do
    visit grupo_recurso_url(@grupo_recurso)
    click_on "Destroy this grupo recurso", match: :first

    assert_text "Grupo recurso was successfully destroyed"
  end
end
