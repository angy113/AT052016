seconds =359
minutes = seconds.to_f/60
hours= minutes/60

puts "Seconds:#{seconds}"
puts "Minutes:#{minutes.round(2)}"
puts "Hours:#{hours.to_f.round(2)}"