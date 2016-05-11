def method_block
##some code
result=0
result=yield result
puts "The value obtained is #{result}"
end

method_block {|result|
	puts "I changed the value into the block"
	result = result==0? 25+15:25*5
}