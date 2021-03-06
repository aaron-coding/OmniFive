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

ActiveRecord::Schema.define(version: 20141224010710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gig_extras", force: true do |t|
    t.integer  "gig_id",     null: false
    t.string   "title",      null: false
    t.integer  "price",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gig_extras", ["gig_id"], name: "index_gig_extras_on_gig_id", using: :btree

  create_table "gigs", force: true do |t|
    t.string   "title",       null: false
    t.integer  "creator_id",  null: false
    t.integer  "price",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
    t.text     "description", null: false
  end

  add_index "gigs", ["creator_id"], name: "index_gigs_on_creator_id", using: :btree

  create_table "likes", force: true do |t|
    t.integer  "gig_id",     null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["gig_id"], name: "index_likes_on_gig_id", using: :btree
  add_index "likes", ["user_id", "gig_id"], name: "index_likes_on_user_id_and_gig_id", unique: true, using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "order_extras", force: true do |t|
    t.integer  "order_id",     null: false
    t.integer  "gig_extra_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_extras", ["gig_extra_id"], name: "index_order_extras_on_gig_extra_id", using: :btree
  add_index "order_extras", ["order_id"], name: "index_order_extras_on_order_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "buyer_id",                   null: false
    t.integer  "gig_id",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "fulfilled",  default: false, null: false
  end

  add_index "orders", ["buyer_id"], name: "index_orders_on_buyer_id", using: :btree
  add_index "orders", ["gig_id"], name: "index_orders_on_gig_id", using: :btree

  create_table "reviews", force: true do |t|
    t.string   "content",    null: false
    t.integer  "stars",      null: false
    t.integer  "order_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["order_id"], name: "index_reviews_on_order_id", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "username",                                               null: false
    t.string   "password_digest",                                        null: false
    t.string   "session_token",                                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "creator_desc"
    t.string   "image_url",       default: "/assets/default-avatar.jpg", null: false
    t.string   "email",           default: "default@gmail.com",          null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
