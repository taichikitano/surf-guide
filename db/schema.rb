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

ActiveRecord::Schema[7.0].define(version: 2023_09_25_151604) do
  create_table "guidances", charset: "utf8", force: :cascade do |t|
    t.bigint "guide_id"
    t.bigint "surf_point_id"
    t.integer "style_id"
    t.integer "price"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "fk_rails_070b0e2e12"
    t.index ["surf_point_id"], name: "fk_rails_f0600d4b29"
  end

  create_table "guides", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "sex_id", null: false
    t.string "age", null: false
    t.integer "history_id", null: false
    t.integer "style_id", null: false
    t.string "home_point", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_guides_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true
  end

  create_table "surf_points", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visiters", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "sex_id", null: false
    t.string "age", null: false
    t.integer "level_id", null: false
    t.integer "history_id", null: false
    t.integer "style_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_visiters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_visiters_on_reset_password_token", unique: true
  end

  add_foreign_key "guidances", "guides"
  add_foreign_key "guidances", "surf_points"
end
