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

ActiveRecord::Schema.define(version: 2020_01_06_221233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer "ruc"
    t.string "nombre"
    t.string "apellido"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.date "fecha"
    t.bigint "proveedor_id"
    t.integer "num_fact"
    t.float "total"
    t.float "pago"
    t.float "saldo"
    t.bigint "tipo_factura_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedor_id"], name: "index_compras_on_proveedor_id"
    t.index ["tipo_factura_id"], name: "index_compras_on_tipo_factura_id"
  end

  create_table "detalle_compras", force: :cascade do |t|
    t.bigint "compra_id"
    t.bigint "repuesto_servicio_id"
    t.integer "cantidad"
    t.float "precio_unitario"
    t.float "precio_venta"
    t.float "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_detalle_compras_on_compra_id"
    t.index ["repuesto_servicio_id"], name: "index_detalle_compras_on_repuesto_servicio_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pago_facturas", force: :cascade do |t|
    t.bigint "compra_id"
    t.float "monto_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compra_id"], name: "index_pago_facturas_on_compra_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.integer "ruc"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repuesto_servicios", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.integer "stock"
    t.float "costo"
    t.float "precio_venta"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_repuesto_servicios_on_category_id"
  end

  create_table "tipo_facturas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehiculos", force: :cascade do |t|
    t.bigint "client_id"
    t.string "modelo"
    t.string "color"
    t.string "matricula"
    t.string "marca"
    t.float "km"
    t.string "chasis"
    t.integer "year_fab"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_vehiculos_on_client_id"
  end

  add_foreign_key "compras", "proveedors"
  add_foreign_key "compras", "tipo_facturas"
  add_foreign_key "detalle_compras", "compras"
  add_foreign_key "detalle_compras", "repuesto_servicios"
  add_foreign_key "pago_facturas", "compras"
  add_foreign_key "repuesto_servicios", "categories"
  add_foreign_key "vehiculos", "clients"
end
