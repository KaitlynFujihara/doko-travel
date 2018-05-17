class AddCreator < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :creator, :string
  end
end
