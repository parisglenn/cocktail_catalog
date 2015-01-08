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

ActiveRecord::Schema.define(version: 20150108000056) do

  create_table "cocktails", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "instructions"
    t.integer  "glass_id"
    t.text     "source"
    t.integer  "rating"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glasses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_families", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_inventories", force: true do |t|
    t.integer  "user_id"
    t.integer  "ingredient_id"
    t.string   "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_modifications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_types", force: true do |t|
    t.string   "name"
    t.integer  "family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.integer  "ingredient_type_id"
    t.string   "name"
    t.string   "brand"
    t.string   "make"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_to_cocktails", force: true do |t|
    t.integer  "cocktail_id"
    t.integer  "ingredient_id"
    t.integer  "modification_id"
    t.string   "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
