class Interest < ActiveRecord::Base
has_and_belongs_to_many :cities
has_and_belongs_to_many :itineraries
has_and_belongs_to_many :preferences
 validates :interest_title, :presence => true
end
