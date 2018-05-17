class AddTableInterestsPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :interests_preferences do |t|
      t.integer :preference_id
      t.integer :interest_id
      t.timestamps
    end
  end
end
