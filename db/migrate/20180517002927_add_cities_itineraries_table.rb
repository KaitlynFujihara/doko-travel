class AddCitiesItinerariesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cities_itineraries do |t|
    t.integer :city_id
    t.integer :itinerary_id
  end
end
end
