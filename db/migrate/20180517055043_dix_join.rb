class DixJoin < ActiveRecord::Migration[5.2]
  def change
    drop_table :preferences_interests
    create_table :interests_preferences do |t|
    t.integer :preference_id
    t.integer :interest_id
  end
end
end
