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

ActiveRecord::Schema.define(version: 20160227163050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "current_favs", force: :cascade do |t|
    t.string  "preview_url"
    t.string  "song_id"
    t.string  "title"
    t.string  "uri"
    t.string  "image"
    t.string  "artist"
    t.string  "spotify_url"
    t.integer "user_id"
  end

  add_index "current_favs", ["user_id"], name: "index_current_favs_on_user_id", using: :btree

  create_table "followers", force: :cascade do |t|
    t.string  "following_id"
    t.integer "user_id"
  end

  add_index "followers", ["user_id"], name: "index_followers_on_user_id", using: :btree

  create_table "rec_tags", force: :cascade do |t|
    t.integer "rec_id"
    t.integer "tag_id"
  end

  add_index "rec_tags", ["rec_id"], name: "index_rec_tags_on_rec_id", using: :btree
  add_index "rec_tags", ["tag_id"], name: "index_rec_tags_on_tag_id", using: :btree

  create_table "recs", force: :cascade do |t|
    t.string  "preview_url"
    t.string  "song_id"
    t.string  "title"
    t.string  "uri"
    t.string  "image"
    t.string  "artist"
    t.string  "spotify_url"
    t.integer "user_id"
  end

  add_index "recs", ["user_id"], name: "index_recs_on_user_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "tag"
    t.integer "rec_id"
  end

  add_index "tags", ["rec_id"], name: "index_tags_on_rec_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.string "image"
    t.text   "top_5",           default: "--- []\n"
  end

  add_foreign_key "current_favs", "users"
  add_foreign_key "followers", "users"
  add_foreign_key "rec_tags", "recs"
  add_foreign_key "rec_tags", "tags"
  add_foreign_key "recs", "users"
  add_foreign_key "tags", "recs"
end
