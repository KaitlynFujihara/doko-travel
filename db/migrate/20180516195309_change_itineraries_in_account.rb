class ChangeItinerariesInAccount < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :itinerary
    add_column :accounts, :itineraries, :string, array: true
  end
end
