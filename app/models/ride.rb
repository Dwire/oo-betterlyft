class Ride

  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    # distance = float
    @distance = distance

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_distance
    all.map {|ride| ride.distance }.sum
  end

  def self.average_distance
    total_distance / all.count
  end

end



# Ride.average_distance
# Returns the average distance across ALL rides

# ----------------------------
# A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. 3.2). The distance refers to miles.
# Ride#passenger
# Returns the Passenger object for that ride
# Ride#driver
# Returns the Driver object for that ride
# Ride#distance
# Returns the distance of the ride
