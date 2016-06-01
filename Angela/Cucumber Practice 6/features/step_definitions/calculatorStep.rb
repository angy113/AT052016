
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
