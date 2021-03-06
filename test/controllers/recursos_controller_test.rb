require "test_helper"

class RecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recurso = recursos(:one)
  end

  test "should get index" do
    get recursos_url
    assert_response :success
  end

  test "should get new" do
    get new_recurso_url
    assert_response :success
  end

  test "should create recurso" do
    assert_difference("Recurso.count") do
      post recursos_url, params: { recurso: { ativo: @recurso.ativo, grupo_recurso_id: @recurso.grupo_recurso_id, medida: @recurso.medida, nome: @recurso.nome, nome_curto: @recurso.nome_curto } }
    end

    assert_redirected_to recurso_url(Recurso.last)
  end

  test "should show recurso" do
    get recurso_url(@recurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_recurso_url(@recurso)
    assert_response :success
  end

  test "should update recurso" do
    patch recurso_url(@recurso), params: { recurso: { ativo: @recurso.ativo, grupo_recurso_id: @recurso.grupo_recurso_id, medida: @recurso.medida, nome: @recurso.nome, nome_curto: @recurso.nome_curto } }
    assert_redirected_to recurso_url(@recurso)
  end

  test "should destroy recurso" do
    assert_difference("Recurso.count", -1) do
      delete recurso_url(@recurso)
    end

    assert_redirected_to recursos_url
  end
end
