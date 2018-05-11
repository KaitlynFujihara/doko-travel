class AddTableCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
    t.string :name
    t.string :description
    t.string :length

    t.timestamps
    end
  end
end