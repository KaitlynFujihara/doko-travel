class Preference < ApplicationRecord
  belongs_to :account
  has_many :interests

  validates :length, :inclusion => 1..14;
  validates :interests, :presence => true;

  def method_validation
    errors.messages[:length] << "Number of days must be between 1 and 14."
  end

end
