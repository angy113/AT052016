Given(/^I have the name ([A-Z]{1}+[a-z]+)$/) do |arg1|
  puts "The name is #{arg1}"
end

Given(/^The last name is ([A-Z]{1}+[a-z]+)$/) do |arg1|
  puts "The last name is #{arg1}"
end

Given(/^The username is ([a-z]+@gmail\.com)$/) do |arg1|
  puts "The username is #{arg1}"
end

Given(/^The password is (.*)$/) do |arg1|
  puts "The password is #{arg1}"
end

Given(/^The password confirm is ([A-Za-z0-9]*)$/) do |arg1|
  puts "The password confirm is #{arg1}"
end

Given(/^The month is (January|February|March|April|May|June|July|August|September|October|November|Dicember)$/) do |arg1|
  puts "The month is #{arg1}"
end

Given(/^The day is ([0-9]*)$/) do |arg1|
  puts "The day is #{arg1}"
end

Given(/^The year is ([0-9]*)$/) do |arg1|
  puts "The year is #{arg1}"
end

Given(/^The gender is (Female|Male)$/) do |arg1|
  puts "The gender is #{arg1}"
end

Given(/^The movile phone is ([0-9]*)$/) do |arg1|
  puts "The movile phone is #{arg1}"
end

Given(/^The current e\-mail address is ([A-Za-z0-9]+@gmail\.com)$/) do |arg1|
  puts "The e-mail is #{arg1}"
end