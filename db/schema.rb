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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120810133224) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "building_types", :force => true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "buildings", :force => true do |t|
    t.integer  "city_id"
    t.integer  "building_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "buildings", ["building_type_id"], :name => "index_buildings_on_building_type_id"
  add_index "buildings", ["city_id"], :name => "index_buildings_on_city_id"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["user_id"], :name => "index_cities_on_user_id"

  create_table "tiles", :force => true do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "city_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "building_id"
  end

  add_index "tiles", ["building_id"], :name => "index_tiles_on_building_id"
  add_index "tiles", ["city_id"], :name => "index_tiles_on_city_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "persistence_token"
  end

end
