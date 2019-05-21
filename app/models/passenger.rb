class Passenger

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def drivers
    rides.map { |ride|  ride.driver }.uniq
  end

  def total_distance
    rides.map {|ride| ride.distance}.sum
  end

  def self.premium_members
    # prem_array = Ride.all.select do |ride|
    #   ride.passenger.total_distance > 100
    # end
    # prem_array.map { |ride| ride.passenger }.uniq

    all.select { |passenger| passenger.total_distance > 100 }
  end

end



# ----------------------------------------------------------------------------------------------------
  # A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
  # Passenger#name
  # Returns the name of the passenger
  # Passenger.all
  # Returns an array of all Passengers
  # Passenger#rides
  # Returns an array of Ride instances that this person has been on
  # Passenger#drivers
  # Returns an array of Driver instances that this person has rode with
  # Passenger#total_distance
  # Returns the floating number that represents the total distance the passenger has travelled using the service
  # Passenger.premium_members
  # Returns an array of all Passengers who have travelled over 100 miles in total with the service
