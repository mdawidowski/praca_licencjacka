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

ActiveRecord::Schema.define(version: 20170504124332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "aukcjes", force: :cascade do |t|
    t.string   "nazwa"
    t.string   "opis"
    t.float    "cena_startowa"
    t.float    "cena_minimalna"
    t.float    "cena_aktualna"
    t.float    "koszt_przesylki"
    t.boolean  "zakonczone",         default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "kategorie_id"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "winner_id"
    t.boolean  "ended",              default: false
    t.boolean  "isogloszenie"
    t.index ["kategorie_id"], name: "index_aukcjes_on_kategorie_id", using: :btree
    t.index ["user_id"], name: "index_aukcjes_on_user_id", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "kategories", force: :cascade do |t|
    t.string   "nazwa_kategorii"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "parent_id"
  end

  create_table "mojeaukcjes", force: :cascade do |t|
    t.integer  "aukcje_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aukcje_id"], name: "index_mojeaukcjes_on_aukcje_id", using: :btree
  end

  create_table "searches", force: :cascade do |t|
    t.string   "klucz"
    t.string   "kategoria"
    t.decimal  "min_cena"
    t.decimal  "max_cena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "login"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "aukcjes", "kategories", column: "kategorie_id"
  add_foreign_key "aukcjes", "users"
  add_foreign_key "mojeaukcjes", "aukcjes"
end
