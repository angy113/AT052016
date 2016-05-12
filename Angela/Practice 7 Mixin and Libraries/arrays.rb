
def array
my_array = [1,2,5,7,11]
end
def firsElement array
puts array.first
end
def lastElement array
puts array.last
end
def arrayElementsCommon array1,array2
puts (array1&array2).inspect
end

puts "The array is:"
puts array.inspect
puts "The first element is:"
firsElement array
puts "The last element is:"
lastElement array
puts "The elements in common with [2,3,4,5] are :"
arrayElementsCommon array,[2,3,4,5]
