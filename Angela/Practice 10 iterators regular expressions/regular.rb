
	def userName
		response=nil
		while response==nil do
			puts "Insert the username:"
			username=gets.chomp.to_s
			response=username=~/^[a-z]+[0-9]+[_]+$/
		end 
			
		
	end
	def password
		response=nil
		while response==nil do
			puts "Insert the password:"
			username=gets.chomp.to_s
			response=username=~/[a-z0-9A-Z]{8,16}/
		end 
			
		
	end

	# def password
		
	# end

	def mail
		response=nil
		while response==nil do
			username=gets.chomp.to_s

		response=username=~/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/
	end
userName
password
mail