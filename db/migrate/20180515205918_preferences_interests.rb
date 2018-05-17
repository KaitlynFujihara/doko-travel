class PreferencesInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences_interests do |t|
      t.integer :preference_id
      t.integer :interest_id
      t.timestamps
    end
    # remove_column :preferences, :interest, :string
  end
end
