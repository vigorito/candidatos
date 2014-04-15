# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140415154516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidatos", force: true do |t|
    t.string   "data_geracao"
    t.string   "hora_geracao"
    t.string   "ano_eleicao"
    t.string   "num_turno"
    t.string   "descricao_eleicao"
    t.string   "sigla_uf"
    t.string   "sigla_ue"
    t.string   "descricao_ue"
    t.string   "codigo_cargo"
    t.string   "descricao_cargo"
    t.string   "nome_candidato"
    t.string   "sequencial_candidato"
    t.string   "numero_candidato"
    t.string   "nome_urna_candidato"
    t.string   "cod_situacao_candidatura"
    t.string   "des_situacao_candidatura"
    t.string   "numero_partido"
    t.string   "sigla_partido"
    t.string   "nome_partido"
    t.string   "codigo_legenda"
    t.string   "sigla_legenda"
    t.string   "composicao_legenda"
    t.string   "nome_legenda"
    t.string   "codigo_ocupacao"
    t.string   "descricao_ocupacao"
    t.string   "data_nascimento"
    t.string   "num_titulo_eleitoral"
    t.string   "idade_data_eleicao"
    t.string   "codigo_sexo"
    t.string   "descricao_sexo"
    t.string   "cod_grau_instrucao"
    t.string   "descricao_grau_instrucao"
    t.string   "codigo_estado_civil"
    t.string   "descricao_estado_civil"
    t.string   "codigo_nacionalidade"
    t.string   "descricao_nacionalidade"
    t.string   "sigla_uf_nascimento"
    t.string   "codigo_municipio_nascimento"
    t.string   "nome_municipio_nascimento"
    t.string   "despesa_max_campanha"
    t.string   "cod_sit_tot_turno"
    t.string   "desc_sit_tot_turno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.text     "texto"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["post_id"], name: "index_comentarios_on_post_id", using: :btree
  add_index "comentarios", ["user_id"], name: "index_comentarios_on_user_id", using: :btree

  create_table "hashtags", force: true do |t|
    t.string   "nome"
    t.string   "link"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hashtags", ["post_id"], name: "index_hashtags_on_post_id", using: :btree

  create_table "likes", force: true do |t|
    t.boolean  "valor"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.integer  "user_id"
    t.integer  "candidato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["candidato_id"], name: "index_posts_on_candidato_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
