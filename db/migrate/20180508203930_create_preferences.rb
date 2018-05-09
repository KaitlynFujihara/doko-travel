class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
    t.integer :length
    t.string :interest
    t.string :mustdos

    t.timestamps
    end
  end
end
