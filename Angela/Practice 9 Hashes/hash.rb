class CreateHash
	attr_accessor :hash
	def initialize
		@hash={}
	end
	def defineHash
		puts "How many values?"
		quantity=gets.chomp.to_i
		quantity.times do |index|
			puts "Insert the key:"
			key=gets.chomp
			puts "Insert the value:"
			value=gets.chomp
			@hash.store(key,value)
		end 
	end
	def printKey hash
		puts "Keys:"
		hash.each do |key,value|
    	p key
		end
	end
	def printValues hash
		puts "Values:"
		hash.each do |key,value|
    	p value
		end
	end
	def printHash hash
		puts "Hash:"
		p hash
	end
	def existKey hash
		puts "Insert a key value to find:"
		key=gets.chomp
		hash.has_key?(key)
		
	end
	def existValue hash
		puts "Insert a value to find:"
		value=gets.chomp
		hash.has_value?(value)
	end
end

hash=CreateHash.new
hash.defineHash
hash.printKey hash.hash
hash.printValues hash.hash
hash.printHash hash.hash
p hash.existKey hash.hash
p hash.existValue hash.hash