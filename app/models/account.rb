class Account < ApplicationRecord
    has_one :user
    has_many :preferences

    def city_checker(length, firsttime)
      if (length < 5) && (firsttime == true)
        binding.pry
        if self.itinerary == nil
          self.itinerary = []
        end
        self.itinerary.push(City.where(name: "Tokyo"))
        self.save!
      end
    end
  end
