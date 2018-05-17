class Rating < ActiveRecord::Base
belongs_to :itinerary
validates_presence_of :itinerary
validates_inclusion_of :value, :in => 1..10
end
