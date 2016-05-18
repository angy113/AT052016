require 'singleton'
class Person
	include Singleton
	attr_accessor :user
	def initialize 
		@user="Guest"
		@message="Welcome to the city"
	    @visitors=0
	    @hash={}
	    @hash.store(@user,@message)
	end
	def addDates user,welcome
		@user=user
		@message=welcome
		@visitors+=1
		@hash.store(@user,@message)
		
	end
	
end



person=Person.instance

puts "Insert new user:"
user=gets.chomp.to_s
puts "Insert new welcome message:"
message=gets.chomp.to_s
person.addDates user,message

puts "Last user:#{Person.instance.user}"
=begin
Both are the same but the second we
difine with the parameters sent
and with the singleton patron the
variables change for all the instance
=end