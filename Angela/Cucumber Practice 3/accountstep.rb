# The steps definitions have two parts the regular expression and the block

#In this cas e the regular expression is /^I have \$(\d+) in my Account$/ 
Given(/^I have \$(\d+) in my Account$/) do |arg1|
end

#In this cas e the regular expression is /^I rquest \$(\d+)$/ 
When(/^I rquest \$(\d+)$/) do |arg1|
end

#In this cas e the regular expression is /^The ATM should dispense \$(\d+)$/
Then(/^The ATM should dispense \$(\d+)$/) do |arg1|
end

#When I change the keyword and I put When instead of Given it still working