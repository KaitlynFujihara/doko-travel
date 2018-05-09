class Account < ApplicationRecord
    has_one :user
    has_many :preferences

  end
