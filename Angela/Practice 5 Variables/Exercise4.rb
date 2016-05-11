def celciusInFahrenheit(celcius)
	fahrenheit=(((9*celcius)/5)+32).round(2)
end

def fahrenheitInCelcius fahrenheit
	celcius=((5*(fahrenheit-32))/9).round(2)
	return celcius
end

puts "Insert fahrenheit degrees:"
fahrenheit=gets.chomp.to_f
puts "Degrees fahrenheit ins celcius are #{fahrenheitInCelcius(fahrenheit)}"
puts "Insert celcius degrees:"
celcius=gets.chomp.to_f
puts "Degrees celcius in fahrenheit are #{celciusInFahrenheit celcius}"
