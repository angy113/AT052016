class Insert


	def insertUserNameAndAge
		puts "Insert your user name"
		puts "#{gets.chomp.to_s}"
		puts "Insert your Age"
		return gets.to_i
	end
end

class Calculate
	def AgeInMinutes age
		puts "Age in minutes: #{age*365*24*60}"
	end
end

age=Insert.new.insertUserNameAndAge
Calculate.new.AgeInMinutes(age)