class Carnival

  attr_reader :name,
              :rides,
              :attendees
  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def recommend_rides(attendee)
    @rides.find_all do |ride|
      attendee.interests.any? do |interest|
        ride.name == interest
      end
    end
  end

  def admit(attendee)
    @attendees << attendee
  end

  def attendees_by_ride_interest
    ride_interest = {}
    require "pry"; binding.pry
    @rides.each do |ride|
      ride_interest[ride] = @attendees
    end
    ride_interest
  end
end