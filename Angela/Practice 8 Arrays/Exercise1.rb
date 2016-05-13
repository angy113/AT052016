class ArrayClass
	def genereThreeArrays
		puts "How many values?"
		quantity=gets.chomp.to_i
		array=[]
		array1=[]
		array2=[]
	 quantity.times do |value|
		puts "Insert the value number #{value}"
		number=gets.chomp
		array.push(number.to_i)
		array1.push(number.to_s)
		if value%2==0? array2.push(number.to_i) : array2.push(number.to_s)
	 end
	 return array,array1,array2
	end

	def printFirstLastAndCommonElements array1,array2
		puts "Elements in common:"
		p array1&array2
		puts "First element first array:"
		p array1.first
		puts "First element second array:"
		p array2[1]
		puts "Last element first array:"
		p array1.last
		puts "Last element second array:"
		p array2[-1]
	end

	def printJoinArraysAndReturnFirstAndLast array1,array2
		array=[]
		array.push(array1.shift)
		array.push(array2.pop)
		p array1+array2
		return array
	end

	def printArray array
		p array
	end
end

array=ArrayClass.new
array1,array2,array3=array.genereThreeArrays
p array1
p array2
p array3
array.printFirstLastAndCommonElements array1,array2
array4=array.printJoinArraysAndReturnFirstAndLast array1,array2
array.printArray array4