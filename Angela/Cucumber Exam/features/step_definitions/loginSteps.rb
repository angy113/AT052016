Given(/^I have the ([a-z0-1]*)$/) do |username|
	@username=username
	@password=$users[username]
  
end

When(/^I put the ([A-Za-z0-9]*)$/) do |password|
  expect(@password).to eql(password.to_s)
end

Then(/^The application show a (.*)$/) do |message|
  expect($messages[@username].to_s).to eql(message) 
  puts message
end
