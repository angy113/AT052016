Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  # Write code here that turns the phrase above into concrete actions
  @board=table.raw
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |player, row, col|
	row,col,player=row.to_i,col.to_i,player.to_s
	if @board[row][col]=="" then
	@board[row][col]=player
	end
	puts @board
   # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expected_table.diff!(@board)
  p @board
end