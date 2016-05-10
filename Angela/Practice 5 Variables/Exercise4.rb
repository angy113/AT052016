def celciusInFahrenheit(celcius)
	fahrenheit=(((9*celcius.to_f)/5)+32).round(2)
end

def fahrenheitInCelcius fahrenheit
	celcius=((5*(fahrenheit.to_f-32))/9).round(2)
	return celcius
end

puts celciusInFahrenheit 35
puts fahrenheitInCelcius(95)