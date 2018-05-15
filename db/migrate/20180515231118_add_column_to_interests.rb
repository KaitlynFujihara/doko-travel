class AddColumnToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :preference_id, :integer
  end
end
