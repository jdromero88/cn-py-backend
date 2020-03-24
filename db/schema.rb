# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_24_195412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.integer "numero"
    t.string "titulo"
    t.text "texto"
    t.bigint "seccion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seccion_id"], name: "index_articulos_on_seccion_id"
  end

  create_table "capitulos", force: :cascade do |t|
    t.integer "numero"
    t.string "numero_romano"
    t.string "titulo"
    t.bigint "titulo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["titulo_id"], name: "index_capitulos_on_titulo_id"
  end

  create_table "partes", force: :cascade do |t|
    t.integer "numero"
    t.string "titulo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seccions", force: :cascade do |t|
    t.integer "numero"
    t.string "titulo"
    t.bigint "capitulo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["capitulo_id"], name: "index_seccions_on_capitulo_id"
  end

  create_table "titulos", force: :cascade do |t|
    t.integer "numero"
    t.string "titulo"
    t.bigint "parte_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parte_id"], name: "index_titulos_on_parte_id"
  end

  add_foreign_key "articulos", "seccions"
  add_foreign_key "capitulos", "titulos"
  add_foreign_key "seccions", "capitulos"
  add_foreign_key "titulos", "partes"
end
