require 'singleton'
class Store
	include Singleton
	attr_reader :itemAmount,:itemQuantity
	def initialize 
		@itemAmount={}
		@itemPrice={"pants"=>80,
			"bag"=>150,
			"doll"=>50,
			"radio"=>100}
		@itemQuantity={"pants"=>5,
			"bag"=>5,
			"doll"=>5,
			"radio"=>5}
	end
	def buyItem 
		puts "What item do you want?"
		item=gets.chomp.to_s
		puts "How many?"
		amount=gets.chomp.to_i
		@itemQuantity.each{|key,value|
			if key==item then @itemQuantity.store(key,value-=amount) end
		}
		if @itemAmount.has_key?(item)then
			@itemAmount.each{|key,value|
			if key==item then @itemQuantity.store(key,value+=amount) end
		}
		else
			@itemAmount.store(item,amount)
		end
	end
	def calculatePrice item,amount
		result=0
		@itemPrice.each{|key,value|
			if item==key then result=value*amount end
		}
		result
	end
end



store=Store.instance
puts "How many items do you like to buy?"
quantity=gets.chomp.to_i
quantity.times do |index|
	store.buyItem
end
puts "Item    Precio"
store.itemAmount.each {|key,value|
	print "#{key}   " 
	puts store.calculatePrice key,value
}

p store.itemQuantity
=begin
	
yes! because in the store we need to work with the same productos all time
and wen we sold productos we just have to call at the instance
of the store.

But is not bad to use in normal way
=end