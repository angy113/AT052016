class Father
	@@money=50	
	def self.money
		@@money
	end
end

class Child1 < Father
	@amount=20
	def self.money
	@@money-=@amount
	end
end

class Child2 < Father
	@amount=10
	def self.money
	@@money-=@amount
	end
end

class Child3 < Father
	@amount=15
	def self.money
	@@money-=@amount
	end
end

puts "Total father's amount = 50"
puts "Child1: #{Child1.money}"
puts "Child2: #{Child2.money}"
puts "Child3: #{Child3.money}"

puts "\r\n Final father's amount: #{Father.money}"