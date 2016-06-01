Feature: Calculator operations
Background: Login Application
	Given I login to the application
	When I give the username admin
	 	And I insert the password admin123
	Then I enter to the application
Scenario: Sum
	Given I have the numbers
	|1|2|3|
	When I select the option "Sum"
	Then I should see result = 6

	Given I have the numbers
	|7|2|3|
	When I select the option "Res"
	Then I should see result = 2

	Given I have the numbers
	|16|2|2|
	When I select the option "Div"
	Then I should see result = 4

	Given I have the numbers
	|2|2|3|
	When I select the option "Mul"
	Then I should see result = 12
