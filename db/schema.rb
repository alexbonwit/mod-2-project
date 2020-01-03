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

ActiveRecord::Schema.define(version: 2019_12_30_225348) do

  create_table "entertainments", force: :cascade do |t|
    t.string "title"
    t.text "description"
  end

  create_table "grave_gang_entertainments", force: :cascade do |t|
    t.integer "grave_gang_id"
    t.integer "entertainment_id"
  end

  create_table "grave_gangs", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
  end

  create_table "members", force: :cascade do |t|
    t.string "username"
    t.string "full_name"
    t.string "birth_date"
    t.string "death_date"
    t.integer "grave_gang_id"
    t.integer "theme_id"
    t.string "password_digest"
  end

  create_table "themes", force: :cascade do |t|
    t.string "title"
    t.text "description"
  end

end
