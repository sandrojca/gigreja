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

ActiveRecord::Schema.define(version: 20151221232429) do

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "situacao"
    t.string   "tipo"
    t.string   "situação_inativo"
    t.string   "sexo"
    t.date     "data_nascimento"
    t.string   "naturalidade"
    t.string   "nacionalidade"
    t.string   "estado_civil"
    t.string   "profissao"
    t.string   "identidade"
    t.string   "cpf"
    t.string   "escolaridade"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "uf"
    t.string   "tel_residencial"
    t.string   "tel_comercial"
    t.string   "tel_celular"
    t.string   "email"
    t.string   "pai"
    t.string   "mae"
    t.string   "conjuge"
    t.date     "data_casamento"
    t.date     "data_batismo"
    t.string   "batismo_local"
    t.string   "recebimento_por"
    t.date     "data_recebimento"
    t.text     "obs"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
