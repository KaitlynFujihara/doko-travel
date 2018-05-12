class Interest < ActiveRecord::Base
# belongs_to :cities

 validates :interest_title, :presence => true
end
