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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sales", id: false, force: :cascade do |t|
    t.integer "rank", null: false
    t.decimal "na_sales"
    t.decimal "eu_sales"
    t.decimal "jp_sales"
    t.decimal "other_sales"
    t.decimal "global_sales"
  end

  create_table "video_games", primary_key: "rank", id: :integer, default: nil, force: :cascade do |t|
    t.string "name"
    t.string "platform"
    t.string "year"
    t.string "genre"
    t.string "publisher"
  end

  add_foreign_key "sales", "video_games", column: "rank", primary_key: "rank", name: "rank"
end
