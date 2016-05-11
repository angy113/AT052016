def secondsInMinutesOrHours seconds
	
	puts "Seconds : #{seconds}"
	minutes=(seconds/60).round(2)
	hours=(minutes/60).round(2)
	return minutes,hours
end

puts "Inserte los segundos:"
seconds=gets.chomp.to_f
minutes,hours=secondsInMinutesOrHours(5555)

puts "Minutes: #{minutes}\r\nHours: #{hours}"