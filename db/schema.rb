# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160112154554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "item_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["item_id"], name: "index_favorites_on_item_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.integer  "section_id"
    t.string   "name",        limit: 128, null: false
    t.decimal  "price"
    t.string   "photo_url"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["section_id"], name: "index_items_on_section_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "address",                   null: false
    t.string   "city",          limit: 120
    t.string   "state",         limit: 2
    t.string   "zip",                       null: false
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["restaurant_id"], name: "index_locations_on_restaurant_id", using: :btree
  add_index "locations", ["zip"], name: "index_locations_on_zip", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["restaurant_id"], name: "index_menus_on_restaurant_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",        limit: 128, null: false
    t.string   "website"
    t.string   "description"
    t.string   "logo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["name"], name: "index_restaurants_on_name", using: :btree

  create_table "sections", force: :cascade do |t|
    t.integer  "menu_id"
    t.string   "name",       limit: 64, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["menu_id"], name: "index_sections_on_menu_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "email",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

  add_foreign_key "items", "sections"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "sections", "menus"
end
