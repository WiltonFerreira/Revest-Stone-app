require "test_helper"

class GrupoRecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_recurso = grupo_recursos(:one)
  end

  test "should get index" do
    get grupo_recursos_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_recurso_url
    assert_response :success
  end

  test "should create grupo_recurso" do
    assert_difference("GrupoRecurso.count") do
      post grupo_recursos_url, params: { grupo_recurso: { nome: @grupo_recurso.nome } }
    end

    assert_redirected_to grupo_recurso_url(GrupoRecurso.last)
  end

  test "should show grupo_recurso" do
    get grupo_recurso_url(@grupo_recurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_recurso_url(@grupo_recurso)
    assert_response :success
  end

  test "should update grupo_recurso" do
    patch grupo_recurso_url(@grupo_recurso), params: { grupo_recurso: { nome: @grupo_recurso.nome } }
    assert_redirected_to grupo_recurso_url(@grupo_recurso)
  end

  test "should destroy grupo_recurso" do
    assert_difference("GrupoRecurso.count", -1) do
      delete grupo_recurso_url(@grupo_recurso)
    end

    assert_redirected_to grupo_recursos_url
  end
end
