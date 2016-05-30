Feature: Different Tests

Scenario: Inventaries
Given I buy apples to eat
Given I buy apple to eat
When I buy 2 apples
And I have 5 apples in the stock
Then I have 3 apples in the stock
       
Given The apples cost 3Bs each one 
And I buy 5 apples
When I pay with 20Bs
Then The exchange is 5Bs

Given I push the sold button
Given I press the sold button
When I select the products
Then sold
And The inventary decrease

Scenario: Register a user
Given I insert users
Given I insert user
When I introduce I introduce all the required dates
And I press The button register
Then All the users are registered
       
Given The user favorite instrument Guitar
When I select the Guitar instument
Then The select comb change

Given I push the register button
Given I press the save button
When I inserted all the test fields values
And I press the register button
Then The user is registered

