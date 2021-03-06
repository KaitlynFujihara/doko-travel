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

ActiveRecord::Schema.define(version: 2018_05_17_172857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "preference_id"
    t.string "itineraries", array: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "length"
  end

  create_table "cities_interests", force: :cascade do |t|
    t.integer "city_id"
    t.integer "interest_id"
  end

  create_table "cities_itineraries", force: :cascade do |t|
    t.integer "city_id"
    t.integer "itinerary_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "interest_title"
    t.integer "preference_id"
  end

  create_table "interests_itineraries", force: :cascade do |t|
    t.integer "interest_id"
    t.integer "itinerary_id"
  end

  create_table "interests_preferences", force: :cascade do |t|
    t.integer "preference_id"
    t.integer "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "account_id"
    t.integer "length"
    t.string "title"
    t.string "description"
    t.string "creator"
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.index ["cached_votes_down"], name: "index_itineraries_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_itineraries_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_itineraries_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_itineraries_on_cached_votes_up"
  end

  create_table "preferences", force: :cascade do |t|
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "firsttime"
    t.integer "account_id"
  end

  create_table "preferences_interests", force: :cascade do |t|
    t.integer "preference_id"
    t.integer "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value"
    t.integer "itinerary_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
