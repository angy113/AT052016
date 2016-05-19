def creatingFile
array=["CBBA","CHQ","TRJ","LP","OR","PTS","PND","BN","SC"]
file_expample=File.open('prueba.txt','w+')
file_expample.truncate(0)
file_expample.write("USER   |PASSWORD|TRAVEL_DATE|DESTINATION|\n")
	100.times do |index|
		day=rand(1..30)
		month=rand(1..12)
		city=rand(0..8)
	    file_expample.write("USER_#{index} | PASS_#{index} | #{month}/#{day}/2016 | #{array[city]} |\n")
	end
file_expample.close
end
creatingFile