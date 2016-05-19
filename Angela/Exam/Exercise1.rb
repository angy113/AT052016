module Convertions
	def minutesToHours minutes
		(minutes/60).round(2)
	end
	def hoursToDays hours
		(hours/24).round(2)
	end
	def daysToMonth days
		(days/30).round(2)
	end
end


