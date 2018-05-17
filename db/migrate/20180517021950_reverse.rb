class Reverse < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :preferences
    add_column :accounts, :preference_id, :integer
  end
end
