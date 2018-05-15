class Preference < ApplicationRecord
  belongs_to :account

  validates :length, :inclusion => 1..14;

  def method_validation
    errors.messages[:length] << "Number of days must be between 1 and 14."
  end

  def initialize(length, interest)
    @length = length
    @interest = interest
  end

  def get_cities
    response = HTTParty.get('http://localhost:3000/length='+ @length)
    response["cities"]
  end
end
