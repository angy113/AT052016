module Calculator
def Calculator.add(lis_of_numbers)
	resul=0
    lis_of_numbers.each do |variable|
   	resul=resul+variable.to_i
   end
   resul
end
def Calculator.substract(lis_of_numbers)
   resul=lis_of_numbers.shift.to_i
   lis_of_numbers.each do |variable|
   	resul=resul-variable.to_i
   end
   resul
end
def Calculator.multiply(lis_of_numbers)
	resul=1
    lis_of_numbers.each do |variable|
   	resul=resul*variable.to_i
   end
   resul
end
def Calculator.divide(lis_of_numbers)
   resul=lis_of_numbers.shift.to_i
    lis_of_numbers.each do |variable|
   	resul=resul/variable.to_i
   end
   resul
end
end
