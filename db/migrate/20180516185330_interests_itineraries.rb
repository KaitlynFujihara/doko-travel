class InterestsItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :interests_itineraries do |t|
    t.integer :interest_id
    t.integer :itinerary_id
  end
  end
end
