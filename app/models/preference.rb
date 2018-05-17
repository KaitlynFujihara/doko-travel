class Preference < ApplicationRecord
has_and_belongs_to_many :interests
belongs_to :account

  validates :length, :inclusion => 1..14;
  validates :interests, :presence => true;

  def method_validation
    errors.messages[:length] << "Number of days must be between 1 and 14."
  end

end
