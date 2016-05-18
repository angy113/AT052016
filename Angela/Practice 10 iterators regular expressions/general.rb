class Practice
	attr_reader :hash

	def initialize
		@hash={}
	end

	def createHash
		puts "How many values?"
		quantity=gets.chomp.to_i
		
		quantity.times do |value|

			puts "Insert the ID for the position #{value}"
			id=gets.chomp.to_i
			while id<1 || id>100 do
				puts "Insert the ID for the position #{value}"
				id=gets.chomp.to_i
			end
			
			response=nil
			while response==nil do
				puts "Insert the username for the position #{value}"
				username=gets.chomp.to_s
				response=username=~/^[a-z]{1,8}$/
			end
			@hash.store(id,username)
		end
	end

	def arrayOfNumber number
		array=[]
		@hash.each{|key,value| 
			response=nil 
			response=key.to_s=~/#{number}/
			if response!=nil then array.push(key) end}
				array
	end

	def arrayOfCharacter character
		array=[]
		@hash.each{|key,value| 
			response=0 
			response=value.to_s=~/#{character}/
			if response==0 then array.push(value) end}
				array
	end

	def message id
		case id
		when (1..25) then puts "User belong Group 1"
		when (26..50) then puts "User belong Group 2"
		when (51..75) then puts "User belong Group 3"
		when (76..100) then puts "User belong Group 4"			
		end
	end

	def printArray array
		p array
	end
end

practice=Practice.new
practice.createHash

puts "Insert a number to find de Ids:"
number=gets.chomp.to_i
puts "The array of ids is:"
practice.printArray practice.arrayOfNumber number

puts "Insert a character to find de usernames:"
username=gets.chomp.to_s
puts "The array of usernames is:"
practice.printArray practice.arrayOfCharacter username
practice.printArray practice.hash
practice.hash.each{|key,value|
	practice.message key
}