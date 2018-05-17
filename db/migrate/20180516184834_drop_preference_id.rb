class DropPreferenceId < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :preference_id
  end
end
