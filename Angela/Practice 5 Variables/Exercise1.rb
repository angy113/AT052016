class Father
	@@money=50	
	def self.money
		@@money
	end
end

class Child1 < Father
	attr_reader :amount
	def initialize
	@amount=20
	@@money-=@amount
	end
end

class Child2 < Father
	attr_reader :amount
	def initialize
	@amount=10
	@@money-=@amount
	end
end

class Child3 < Father
	attr_reader :amount
	def initialize
	@amount=15
	@@money-=@amount
	end
end

puts "Total father's amount = 50"
puts "Child1: #{Child1.new.amount}"
puts "Child2: #{Child2.new.amount}"
puts "Child3: #{Child3.new.amount}"

puts "\r\n Final father's amount: #{Father.money}"