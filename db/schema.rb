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

ActiveRecord::Schema.define(version: 20150119150912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "comments", force: true do |t|
    t.integer  "commentable_id",   default: 0
    t.string   "commentable_type"
    t.string   "title"
    t.text     "body"
    t.string   "subject"
    t.integer  "user_id",          default: 0, null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

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
    t.integer  "ingredient_category_id"
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

  create_table "ingredient_to_cocktail", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "ingredient_modification_id"
    t.string   "amount"
    t.integer  "cocktail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredient_to_cocktail", ["cocktail_id"], name: "index_ingredient_to_cocktail_on_cocktail_id", using: :btree
  add_index "ingredient_to_cocktail", ["ingredient_id"], name: "index_ingredient_to_cocktail_on_ingredient_id", using: :btree
  add_index "ingredient_to_cocktail", ["ingredient_modification_id"], name: "index_ingredient_to_cocktail_on_ingredient_modification_id", using: :btree

  create_table "ingredient_types", force: true do |t|
    t.string   "name"
    t.integer  "ingredient_family_id"
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
    t.integer  "ingredient_modification_id"
    t.string   "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
