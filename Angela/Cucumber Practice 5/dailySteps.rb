Given(/^A new activity$/) do
end

When(/^I finish the BDT homework$/) do
end

When(/^The teacher gives homework$/) do
end

Then(/^I have a new task with the state to do$/) do
end

Given(/^A a BDT task$/) do
end

When(/^I start doing the homework$/) do
end

Then(/^The task pass to state in progress$/) do
end

Given(/^A a BDT task in progress$/) do
end

When(/^I finish the homework$/) do
end

Then(/^The task pass to state done$/) do
end


Given(/^a board like this$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  # Write code here that turns the phrase above into concrete actions
  @board=table.rows_hash

end

When(/^I start doing the ([A-Z]*) homework$/) do |subject|
  puts @board[subject]
  @board[subject]="In Progress"
  @state="In Progress"
  p @board

end

Then(/^the State is going to change to (.*)$/) do |state|
   expect(@state).to eql(state.to_s) 
end
Then(/^the board should look like$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expect(expected_table.rows_hash).to eql(@board) 
  #expected_table.diff!(@board.raw)
  p @board
end

