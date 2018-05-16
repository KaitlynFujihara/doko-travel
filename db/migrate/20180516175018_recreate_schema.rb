class RecreateSchema < ActiveRecord::Migration[5.2]
  def change
    create_table "accounts", force: :cascade do |t|
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "preference_id"
      t.string "itinerary", array: true, default: []
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

    create_table "interests", force: :cascade do |t|
      t.string "interest_title"
      t.integer "preference_id"
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
  end
end
