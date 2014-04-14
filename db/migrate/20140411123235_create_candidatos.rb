class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.string :data_geracao
      t.string :hora_geracao
      t.string :ano_eleicao
      t.string :num_turno
      t.string :descricao_eleicao
      t.string :sigla_uf
      t.string :sigla_ue
      t.string :descricao_ue
      t.string :codigo_cargo
      t.string :descricao_cargo
      t.string :nome_candidato
      t.string :sequencial_candidato
      t.string :numero_candidato
      t.string :nome_urna_candidato
      t.string :cod_situacao_candidatura
      t.string :des_situacao_candidatura
      t.string :numero_partido
      t.string :sigla_partido
      t.string :nome_partido
      t.string :codigo_legenda
      t.string :sigla_legenda
      t.string :composicao_legenda
      t.string :nome_legenda
      t.string :codigo_ocupacao
      t.string :descricao_ocupacao
      t.string :data_nascimento
      t.string :num_titulo_eleitoral
      t.string :idade_data_eleicao
      t.string :codigo_sexo
      t.string :descricao_sexo
      t.string :cod_grau_instrucao
      t.string :descricao_grau_instrucao
      t.string :codigo_estado_civil
      t.string :descricao_estado_civil
      t.string :codigo_nacionalidade
      t.string :descricao_nacionalidade
      t.string :sigla_uf_nascimento
      t.string :codigo_municipio_nascimento
      t.string :nome_municipio_nascimento
      t.string :despesa_max_campanha
      t.string :cod_sit_tot_turno
      t.string :desc_sit_tot_turno

      t.timestamps
    end
  end
end
