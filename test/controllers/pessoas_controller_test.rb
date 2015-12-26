require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { bairro: @pessoa.bairro, batismo_local: @pessoa.batismo_local, cep: @pessoa.cep, cidade: @pessoa.cidade, complemento: @pessoa.complemento, conjuge: @pessoa.conjuge, cpf: @pessoa.cpf, data_batismo: @pessoa.data_batismo, data_casamento: @pessoa.data_casamento, data_nascimento: @pessoa.data_nascimento, data_recebimento: @pessoa.data_recebimento, email: @pessoa.email, endereco: @pessoa.endereco, escolaridade: @pessoa.escolaridade, estado_civil: @pessoa.estado_civil, identidade: @pessoa.identidade, mae: @pessoa.mae, nacionalidade: @pessoa.nacionalidade, naturalidade: @pessoa.naturalidade, nome: @pessoa.nome, numero: @pessoa.numero, obs: @pessoa.obs, pai: @pessoa.pai, profissao: @pessoa.profissao, recebimento_por: @pessoa.recebimento_por, sexo: @pessoa.sexo, situacao: @pessoa.situacao, situação_inativo: @pessoa.situação_inativo, tel_celular: @pessoa.tel_celular, tel_comercial: @pessoa.tel_comercial, tel_residencial: @pessoa.tel_residencial, tipo: @pessoa.tipo, uf: @pessoa.uf }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { bairro: @pessoa.bairro, batismo_local: @pessoa.batismo_local, cep: @pessoa.cep, cidade: @pessoa.cidade, complemento: @pessoa.complemento, conjuge: @pessoa.conjuge, cpf: @pessoa.cpf, data_batismo: @pessoa.data_batismo, data_casamento: @pessoa.data_casamento, data_nascimento: @pessoa.data_nascimento, data_recebimento: @pessoa.data_recebimento, email: @pessoa.email, endereco: @pessoa.endereco, escolaridade: @pessoa.escolaridade, estado_civil: @pessoa.estado_civil, identidade: @pessoa.identidade, mae: @pessoa.mae, nacionalidade: @pessoa.nacionalidade, naturalidade: @pessoa.naturalidade, nome: @pessoa.nome, numero: @pessoa.numero, obs: @pessoa.obs, pai: @pessoa.pai, profissao: @pessoa.profissao, recebimento_por: @pessoa.recebimento_por, sexo: @pessoa.sexo, situacao: @pessoa.situacao, situação_inativo: @pessoa.situação_inativo, tel_celular: @pessoa.tel_celular, tel_comercial: @pessoa.tel_comercial, tel_residencial: @pessoa.tel_residencial, tipo: @pessoa.tipo, uf: @pessoa.uf }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
