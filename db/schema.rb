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

ActiveRecord::Schema.define(version: 20180521044217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheese_reviews", force: :cascade do |t|
    t.integer "cheese_id", null: false
    t.integer "user_id", null: false
    t.float "rating", null: false
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "cheese_id"], name: "index_cheese_reviews_on_user_id_and_cheese_id", unique: true
  end

  create_table "cheeses", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.string "category"
    t.string "brand", null: false
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cheese_pic_file_name"
    t.string "cheese_pic_content_type"
    t.integer "cheese_pic_file_size"
    t.datetime "cheese_pic_updated_at"
    t.string "image_path", default: "https://s3-us-west-2.amazonaws.com/cheeses/cheeses/cheese_pics/000/000/025/original/colby.jpg"
    t.index ["name", "brand"], name: "index_cheeses_on_name_and_brand", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "location"
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "admin", default: "false"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
