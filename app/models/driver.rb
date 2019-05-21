class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passenger_names
    riders = rides.map do |ride|
      ride.passenger.name
    end
    # rides.map {|ride| ride.passenger.name}.uniq
    riders.uniq
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def total_distance
    rides.map {|ride| ride.distance}.sum
  end

  def self.mileage_cap(distance)

    all.select {|driver| driver.total_distance > distance}
  end



end


# Driver.mileage_cap(distance)
  # Takes an argument of a distance (float) and returns
  # an array of all Drivers who have driven over the mileage


# ----------------------------------------------------------

# A Driver should be initialized with a name as a string.
# Driver#name
  # Returns the driver's name
# Driver.all
  # Returns an array of all Drivers
  # Driver#passenger_names
  # Returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
  # Driver#rides
  # Returns an array of all Rides a driver has made
