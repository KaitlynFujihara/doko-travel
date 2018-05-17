class City < ActiveRecord::Base
has_and_belongs_to_many :interests
has_and_belongs_to_many :itineraries

 validates :name, :presence => true
 validates :description, :presence => true
 validates :length, :presence => true

end
