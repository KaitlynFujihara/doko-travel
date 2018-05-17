class Ratings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.column :value, :integer
      t.column :itinerary_id, :integer
  end
end
end
