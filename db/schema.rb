# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_19_223613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grupo_recursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recursos", force: :cascade do |t|
    t.string "nome"
    t.string "medida"
    t.bigint "grupo_recurso_id", null: false
    t.string "nome_curto"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grupo_recurso_id"], name: "index_recursos_on_grupo_recurso_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "fantasia"
    t.string "razaosocial"
    t.string "telefone"
    t.string "endereco"
    t.string "cidade"
    t.string "estado"
    t.string "email"
    t.string "whatsapp"
    t.string "site"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cnpj"
    t.string "cpf"
    t.string "type"
    t.string "inscEstadual"
    t.string "instagram"
  end

  create_table "tabela_compras", force: :cascade do |t|
    t.date "data"
    t.bigint "recurso_id", null: false
    t.bigint "supplier_id", null: false
    t.decimal "valor"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recurso_id"], name: "index_tabela_compras_on_recurso_id"
    t.index ["supplier_id"], name: "index_tabela_compras_on_supplier_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "recursos", "grupo_recursos"
  add_foreign_key "tabela_compras", "recursos"
  add_foreign_key "tabela_compras", "suppliers"
end
