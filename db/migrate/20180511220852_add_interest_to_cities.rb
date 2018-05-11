class AddInterestToCities < ActiveRecord::Migration[5.2]
  def change
    add_reference :cities, :interests, foreign_key: true
  end
end
