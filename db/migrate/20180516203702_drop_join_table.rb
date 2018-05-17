class DropJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :cities_itineraries
  end
end
