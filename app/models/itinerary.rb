class Itinerary < ApplicationRecord
  acts_as_votable

  has_and_belongs_to_many :interests
  has_and_belongs_to_many :cities
  has_many :ratings, :dependent => :destroy
  default_scope -> { order(:cached_votes_up) }

end
