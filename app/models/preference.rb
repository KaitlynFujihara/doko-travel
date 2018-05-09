class Preference < ApplicationRecord
  belongs_to :account

  validates :length, :inclusion => 1..14

  def method_validation
    errors.messages[:length] << "Number of days must be between 1 and 14."
  end
end
