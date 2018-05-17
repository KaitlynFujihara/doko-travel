class Itinerary < ApplicationRecord
  has_many :cities
  has_and_belongs_to_many :interests

end
