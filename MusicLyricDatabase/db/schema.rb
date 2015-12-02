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

ActiveRecord::Schema.define(version: 20151202184620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string  "title"
    t.integer "year"
    t.integer "artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string  "name"
    t.integer "genre_id"
    t.integer "region_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "playlists", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "playlists_songs", id: false, force: :cascade do |t|
    t.integer "playlist_id", null: false
    t.integer "song_id",     null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string  "name"
    t.integer "genre_id"
    t.integer "region_id"
  end

  create_table "producers_songs", id: false, force: :cascade do |t|
    t.integer "producer_id", null: false
    t.integer "song_id",     null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
  end

  create_table "songs", force: :cascade do |t|
    t.string  "title"
    t.string  "duration"
    t.string  "lyrics"
    t.integer "album_id"
    t.integer "producer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
