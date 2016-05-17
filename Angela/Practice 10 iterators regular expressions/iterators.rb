class Iterators
	attr_accessor :amount
	def initialize amount
		@amount=amount
		@hash={}
	end
	def getNameAndId
		
		@amount.times do |index|
			puts "Insert the name number #{index}:"
			name=gets.chomp.to_s
			puts "Insert the id numer #{index}:"
			id=gets.chomp
			@hash.store(name,id)
		end 
	end
	def operationHash
		array=[]
		@hash.each_with_index do |(key,value),index|
			key=key.upcase
			puts "Position: #{index} Name: #{key}"
			array.push(key)
		end
		array
	end
	def goodBye
		@hash.each do |key,value|
    	puts "Good bye #{key}"
		end
	end
end

puts "Insert amount:"
amount=gets.chomp.to_i
hash=Iterators.new amount
hash.getNameAndId
array=hash.operationHash
puts "The array is:"
p array
hash.goodBye