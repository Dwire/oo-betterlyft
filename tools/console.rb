require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


driver1 = Driver.new('Tess')
driver2 = Driver.new('Greg')
driver3 = Driver.new('Fan')
driver4 = Driver.new('Rachel')


passenger1 = Passenger.new('Carla')
passenger2 = Passenger.new('Joe')
passenger3 = Passenger.new('Kenton')
passenger4 = Passenger.new('Toni')
passenger5 = Passenger.new('Kevin')


ride1 = Ride.new(driver1, passenger1, 60.1)
ride2 = Ride.new(driver1, passenger2, 93.1)
ride3 = Ride.new(driver2, passenger3, 10000.3)
ride4 = Ride.new(driver3, passenger2, 10.3)
ride5 = Ride.new(driver4, passenger4, 3.3)
ride6 = Ride.new(driver3, passenger2, 40.3)
ride7 = Ride.new(driver4, passenger2, 30.3)
# ride7 = Ride.new(driver4, passenger3, 30.3)



# Put your variables here~!


binding.pry
