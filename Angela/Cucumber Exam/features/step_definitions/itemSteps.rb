Given(/^I have a (.*)$/) do |item|
  @item=item
end

When(/^I search in the list of items$/) do
  @founded=false
  $itemsList.each do |item|
  	if item==@item then
  		@founded=true
  	end
  end
end

Then(/^Show a message that the item was founded$/) do
   expect(@founded).to be==true
end

Then(/^Show a message that the item wasn't founded$/) do
   expect(@founded).to be==false
end
