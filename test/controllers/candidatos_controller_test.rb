require 'test_helper'

class CandidatosControllerTest < ActionController::TestCase
  setup do
    @candidato = candidatos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidatos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidato" do
    assert_difference('Candidato.count') do
      post :create, candidato: { ano_eleicao: @candidato.ano_eleicao, cod_grau_instrucao: @candidato.cod_grau_instrucao, cod_sit_tot_turno: @candidato.cod_sit_tot_turno, cod_situacao_candidatura: @candidato.cod_situacao_candidatura, codigo_cargo: @candidato.codigo_cargo, codigo_estado_civil: @candidato.codigo_estado_civil, codigo_legenda: @candidato.codigo_legenda, codigo_municipio_nascimento: @candidato.codigo_municipio_nascimento, codigo_nacionalidade: @candidato.codigo_nacionalidade, codigo_ocupacao: @candidato.codigo_ocupacao, codigo_sexo: @candidato.codigo_sexo, composicao_legenda: @candidato.composicao_legenda, data_geracao: @candidato.data_geracao, data_nascimento: @candidato.data_nascimento, des_situacao_candidatura: @candidato.des_situacao_candidatura, desc_sit_tot_turno: @candidato.desc_sit_tot_turno, descricao_cargo: @candidato.descricao_cargo, descricao_eleicao: @candidato.descricao_eleicao, descricao_estado_civil: @candidato.descricao_estado_civil, descricao_grau_instrucao: @candidato.descricao_grau_instrucao, descricao_nacionalidade: @candidato.descricao_nacionalidade, descricao_ocupacao: @candidato.descricao_ocupacao, descricao_sexo: @candidato.descricao_sexo, descricao_ue: @candidato.descricao_ue, despesa_max_campanha: @candidato.despesa_max_campanha, hora_geracao: @candidato.hora_geracao, idade_data_eleicao: @candidato.idade_data_eleicao, nome_candidato: @candidato.nome_candidato, nome_legenda: @candidato.nome_legenda, nome_municipio_nascimento: @candidato.nome_municipio_nascimento, nome_partido: @candidato.nome_partido, nome_urna_candidato: @candidato.nome_urna_candidato, num_titulo_eleitoral: @candidato.num_titulo_eleitoral, num_turno: @candidato.num_turno, numero_candidato: @candidato.numero_candidato, numero_partido: @candidato.numero_partido, sequencial_candidato: @candidato.sequencial_candidato, sigla_legenda: @candidato.sigla_legenda, sigla_partido: @candidato.sigla_partido, sigla_ue: @candidato.sigla_ue, sigla_uf: @candidato.sigla_uf, sigla_uf_nascimento: @candidato.sigla_uf_nascimento }
    end

    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should show candidato" do
    get :show, id: @candidato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidato
    assert_response :success
  end

  test "should update candidato" do
    patch :update, id: @candidato, candidato: { ano_eleicao: @candidato.ano_eleicao, cod_grau_instrucao: @candidato.cod_grau_instrucao, cod_sit_tot_turno: @candidato.cod_sit_tot_turno, cod_situacao_candidatura: @candidato.cod_situacao_candidatura, codigo_cargo: @candidato.codigo_cargo, codigo_estado_civil: @candidato.codigo_estado_civil, codigo_legenda: @candidato.codigo_legenda, codigo_municipio_nascimento: @candidato.codigo_municipio_nascimento, codigo_nacionalidade: @candidato.codigo_nacionalidade, codigo_ocupacao: @candidato.codigo_ocupacao, codigo_sexo: @candidato.codigo_sexo, composicao_legenda: @candidato.composicao_legenda, data_geracao: @candidato.data_geracao, data_nascimento: @candidato.data_nascimento, des_situacao_candidatura: @candidato.des_situacao_candidatura, desc_sit_tot_turno: @candidato.desc_sit_tot_turno, descricao_cargo: @candidato.descricao_cargo, descricao_eleicao: @candidato.descricao_eleicao, descricao_estado_civil: @candidato.descricao_estado_civil, descricao_grau_instrucao: @candidato.descricao_grau_instrucao, descricao_nacionalidade: @candidato.descricao_nacionalidade, descricao_ocupacao: @candidato.descricao_ocupacao, descricao_sexo: @candidato.descricao_sexo, descricao_ue: @candidato.descricao_ue, despesa_max_campanha: @candidato.despesa_max_campanha, hora_geracao: @candidato.hora_geracao, idade_data_eleicao: @candidato.idade_data_eleicao, nome_candidato: @candidato.nome_candidato, nome_legenda: @candidato.nome_legenda, nome_municipio_nascimento: @candidato.nome_municipio_nascimento, nome_partido: @candidato.nome_partido, nome_urna_candidato: @candidato.nome_urna_candidato, num_titulo_eleitoral: @candidato.num_titulo_eleitoral, num_turno: @candidato.num_turno, numero_candidato: @candidato.numero_candidato, numero_partido: @candidato.numero_partido, sequencial_candidato: @candidato.sequencial_candidato, sigla_legenda: @candidato.sigla_legenda, sigla_partido: @candidato.sigla_partido, sigla_ue: @candidato.sigla_ue, sigla_uf: @candidato.sigla_uf, sigla_uf_nascimento: @candidato.sigla_uf_nascimento }
    assert_redirected_to candidato_path(assigns(:candidato))
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete :destroy, id: @candidato
    end

    assert_redirected_to candidatos_path
  end
end
