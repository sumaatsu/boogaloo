# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_05_034235) do
  create_table "karaoke_hubs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.integer "session_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_reviews_on_session_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "session_tracks", force: :cascade do |t|
    t.integer "track_id", null: false
    t.integer "session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_session_tracks_on_session_id"
    t.index ["track_id"], name: "index_session_tracks_on_track_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "karaoke_id", null: false
    t.integer "user_id", null: false
    t.integer "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["karaoke_id"], name: "index_sessions_on_karaoke_id"
    t.index ["track_id"], name: "index_sessions_on_track_id"
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "album"
    t.string "genre"
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reviews", "sessions"
  add_foreign_key "reviews", "users"
  add_foreign_key "session_tracks", "sessions"
  add_foreign_key "session_tracks", "tracks"
  add_foreign_key "sessions", "karaokes"
  add_foreign_key "sessions", "tracks"
  add_foreign_key "sessions", "users"
end
