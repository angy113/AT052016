class ArrayClass
	def genereThreeArray
		array=[1,2,3,4,5,6,7,8]
		array1=[]
		array2=[]
	 array.length.times do |value|
		array1.push(array[value].to_s)
		(value.to_i%2==0)? array2.push(array[value].to_i : array2.push(array[value].to_s)
		
	 end
	 return array,array1,array2
	end

	def printFirstLastAndCommonElements array1,array2
		puts "Elements in common:"
		p array1&array2
		puts "First element first array:"
		p array1.first
		puts "First element second array:"
		p array2[0]
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
		array
	end

	def printArray array1
		p array1
	end
end

array=ArrayClass.new
array1,array2,array3=array.genereThreeArray
p "Numbers array: #{array1}"
p "String array: #{array2}"
p array3
array.printFirstLastAndCommonElements array1,array2
array4=array.printJoinArraysAndReturnFirstAndLast array1,array2
array.printArray array4