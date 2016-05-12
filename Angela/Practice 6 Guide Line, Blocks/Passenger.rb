class Passenger
	attr_reader :name,:destination
def passenger_init(name,price,destination="CBBA")
	@name=name
	@destination=destination
	@priceInDollars=price.to_f/7
	
end
end

passenger=Passenger.new
puts "Insert the name:"
name=gets.chomp
puts "Insert the price:"
price=gets.chomp.to_f
puts "Do you want to insert the destination? y/n"
response=gets.chomp.to_s

if response=="y" then
	puts "Insert the destination:" 
	destination=gets.chomp.to_s 
	priceInDollars=passenger.passenger_init name,price,destination
else
	priceInDollars=passenger.passenger_init name,price
end
puts "Price in dollars: #{priceInDollars.round(2)}"
puts "Name: #{passenger.name}"
puts "Destination: #{passenger.destination}"