Feature:Define if item exists or not
@finditem
Scenario: Expect to find an item
	Given I have a carrot
	When I search in the list of items
	Then Show a message that the item was founded
@notfinditem
Scenario: Expect not to find an item
	Given I have a onion
	When I search in the list of items
	Then Show a message that the item wasn't founded  
