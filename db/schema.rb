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

ActiveRecord::Schema.define(version: 2020_04_21_080615) do

  create_table "songs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.integer "easy", null: false
    t.integer "normal", null: false
    t.integer "hard", null: false
    t.integer "expert", null: false
    t.integer "special"
    t.integer "band_id", null: false
    t.integer "style_id", null: false
    t.date "delivery", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
