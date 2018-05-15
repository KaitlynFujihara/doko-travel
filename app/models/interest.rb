class Interest < ActiveRecord::Base
has_and_belongs_to_many :cities
belongs_to :preference

 validates :interest_title, :presence => true
end
