class AddInterestId < ActiveRecord::Migration[5.2]
  def change
    add_column :preferences, :interest_id, :integer

  end
end
