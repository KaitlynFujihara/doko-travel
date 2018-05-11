class AddCityToInterests < ActiveRecord::Migration[5.2]
  def change
    add_reference :interests, :cities, foreign_key: true
  end
end
