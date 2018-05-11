class City < ActiveRecord::Base
has_many :interests

 validates :name, :presence => true
 validates :description, :presence => true
 validates :length, :presence => true

end
