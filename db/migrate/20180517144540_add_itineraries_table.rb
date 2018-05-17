class AddItinerariesTable < ActiveRecord::Migration[5.2]
    def change
      create_table :itineraries do |t|
      t.integer :account_id
      t.integer :length
      t.string :title
      t.string :description
    end
  end  
end
