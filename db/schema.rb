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

ActiveRecord::Schema.define(version: 2019_08_27_123124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_accounts", force: :cascade do |t|
    t.bigint "admin_panel_admin_id", null: false
    t.string "name"
    t.index ["admin_panel_admin_id"], name: "index_admin_accounts_on_admin_panel_admin_id"
    t.index ["name"], name: "index_admin_accounts_on_name", unique: true
  end

  create_table "admin_panel_admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_panel_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_panel_admins_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.bigint "admin_account_id", null: false
    t.text "title"
    t.text "content"
    t.text "description"
    t.bigint "category_id", null: false
    t.string "type_article"
    t.boolean "allow_comments"
    t.string "status_article"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_account_id"], name: "index_articles_on_admin_account_id"
    t.index ["category_id"], name: "index_articles_on_category_id"
  end

  create_table "categories", id: :bigint, default: -> { "nextval('admin_panel_categories_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "admin_accounts", "admin_panel_admins"
  add_foreign_key "articles", "admin_accounts"
  add_foreign_key "articles", "categories"
end
