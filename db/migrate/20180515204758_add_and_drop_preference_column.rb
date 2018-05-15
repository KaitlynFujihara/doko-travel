class AddAndDropPreferenceColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :preferences, :mustdos
    add_column :preferences, :firsttime, :integer
  end
end
