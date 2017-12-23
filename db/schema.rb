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

ActiveRecord::Schema.define(version: 20171223020447) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfume_brands", force: :cascade do |t|
    t.integer "perfume_id"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_perfume_brands_on_brand_id"
    t.index ["perfume_id"], name: "index_perfume_brands_on_perfume_id"
  end

  create_table "perfumes", force: :cascade do |t|
    t.string "perfume_name"
    t.string "size"
    t.integer "rating"
    t.date "date_worn"
    t.text "description"
    t.string "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
