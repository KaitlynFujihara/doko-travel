class AddTableItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
    t.integer :account_id
    t.integer :length
    t.string :title
    t.string :description
  end
  create_table :cities_itineraries do |t|
  t.integer :city_id
  t.integer :itinerary_id
end
  end
end
