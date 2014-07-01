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

ActiveRecord::Schema.define(version: 20140701025013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moods", force: true do |t|
    t.string   "happy"
    t.string   "sad"
    t.string   "rage"
    t.string   "anger"
    t.string   "hysteria"
    t.string   "boredom"
    t.string   "pensive"
    t.string   "melanholy"
    t.string   "elated"
    t.string   "tired"
    t.string   "frustrated"
    t.string   "party"
    t.string   "hateful"
    t.string   "drunk"
    t.string   "high"
    t.string   "relaxed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists", force: true do |t|
    t.string   "playlist_1"
    t.string   "playlist_2"
    t.string   "playlist_3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
