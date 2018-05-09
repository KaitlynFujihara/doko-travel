class AddPreferenceIdToAccounts < ActiveRecord::Migration[5.2]
  def change
    change_table :accounts do |t|
      ## Database authenticatable
      t.integer :preference_id
    end
  end
end
