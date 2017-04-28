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

ActiveRecord::Schema.define(version: 20170428084729) do

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boards_users", id: false, force: :cascade do |t|
    t.integer "board_id"
    t.integer "user_id"
    t.index ["board_id"], name: "index_boards_users_on_board_id"
    t.index ["user_id"], name: "index_boards_users_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "board_id"
    t.index ["board_id"], name: "index_categories_on_board_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "board_id"
    t.index ["board_id"], name: "index_moods_on_board_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "file"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.integer "board_id"
    t.index ["board_id"], name: "index_roles_on_board_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "status"
    t.datetime "due_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "board_id"
    t.index ["board_id"], name: "index_todos_on_board_id"
  end

  create_table "todos_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "todo_id"
    t.index ["todo_id"], name: "index_todos_users_on_todo_id"
    t.index ["user_id"], name: "index_todos_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "photo"
    t.integer "mood_id"
    t.integer "board_id"
    t.index ["board_id"], name: "index_users_on_board_id"
    t.index ["mood_id"], name: "index_users_on_mood_id"
  end

end
