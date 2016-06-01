Given(/^I login to the application$/) do
# Write code here that turns the phrase above into concrete actions
end

When(/^I give the username (.*)$/) do |username|
  expect($app_user).to eql(username.to_s)
end

When(/^I insert the password (.*)$/) do |password|
  expect($app_pass.to_s).to eql(password.to_s)
end

Then(/^I enter to the application$/) do
  puts "Welcome!"
end
Given(/^I have the numbers$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
   # Write code here that turns the phrase above into concrete actions
   @board=table.raw[0]
end

When(/^I select the option "([^"]*)"$/) do |operation|
   # Write code here that turns the phrase above into concrete actions

   case operation
	   when "Sum" then @result=Calculator.add(@board)
	   when "Res" then @result=Calculator.substract(@board)
	   when "Mul" then @result=Calculator.multiply(@board)
	   when "Div" then @result=Calculator.divide(@board)
   end

end

Then(/^I should see result = (\d+)$/) do |result|
  expect(@result).to eql(result.to_i) 
end
