class Person
	attr_writer :name
	attr_reader :greet
	attr_accessor :message

	def initialize (name)
		@name=name
		@greet= "Hi #{@name}"
		@message ="#{@name} Have a nice day"
	end
end

person=Person.new("Angy")
puts person.greet
puts person.message
