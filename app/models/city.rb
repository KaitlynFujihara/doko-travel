class City < ActiveRecord::Base
has_and_belongs_to_many :interests

 validates :name, :presence => true
 validates :description, :presence => true
 validates :length, :presence => true

end
