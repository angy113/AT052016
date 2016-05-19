require_relative "Exercise1"
require 'singleton'
class Registration
	attr_accessor :hash

	include Singleton
	include Convertions

	def initialize
		@username=nil
		@id=nil
		@hash={}
		@file=File.open("execution.log",'w+')
		@file.truncate(0)	
	end

	def insert
		puts "Insert the Id:"
		@id=gets.chomp
		@file.write("The Id inserted was #{@id}\n")
		begin
		puts "Insert the username:"
		@username=gets.chomp.to_s
		response=@username=~/^[a-z0-9]{1,11}$/	
		end while response==nil
		@hash.store(@id,@username)
		@file.write("The username inserted was #{@username}\n")
	end

	def amount
		begin
		puts "How many users do you want?"
		quantity=gets.chomp.to_i
		end while quantity>15 or quantity<3
		@file.write("Were inserted #{quantity} users\n")
		quantity.times do
			insert
		end
	end

	def convertions
		puts "Which type of convertion do you want?"
		puts "a) From minutes to hours"
		puts "b) From hours to days"
		puts "c) From days to months"
		convertionType=gets.chomp

	end

	def result option
		case option
		when "a" then 
			@file.write("The selection for the user was a\n")
			puts "Insert the value in minutes:" 
			result=gets.chomp.to_f
			puts "#{result} min represents #{minutesToHours result} Hrs"
			@file.write("#{result} min represents #{minutesToHours result} Hrs\n")
		when "b" then 
			@file.write("The selection for the user was b\n")
			puts "Insert the value in hours:" 
			result=gets.chomp.to_f
			puts "#{result} Hrs represents #{hoursToDays result} days"
			@file.write("#{result} Hrs represents #{hoursToDays result} days\n")
		when "c" then result="c"
			@file.write("The selection for the user was c\n")
			puts "Insert the value in days:" 
			result=gets.chomp.to_f
			puts "#{result} days represents #{daysToMonth result} month"
			@file.write("#{result} days represents #{daysToMonth result} month")
		end
	end
end

Registration.instance.amount
Registration.instance.hash.each do
	Registration.instance.result Registration.instance.convertions
end 
