class Passenger
	attr_reader :name,:destination
def passenger_init(name,price,destination="CBBA")
	@name=name
	@destination=destination
	@priceInDollars=price.to_f/7
	
end
end

passenger=Passenger.new

puts "Price in dollars: #{passenger.passenger_init "Angy",54}"
puts "Name: #{passenger.name}"
puts "Destination: #{passenger.destination}"