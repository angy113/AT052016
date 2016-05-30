Feature: Form Testing

Scenario: Validate enter fields
Given I have the name Angy
And The last name is Valdez
And The username is angy@gmail.com
And The password is ANGela11
And The password confirm is ANGela11
And The month is February 
And The day is 19 
And The year is 1994
And The gender is Female
And The movile phone is 44713396
And The current e-mail address is vba0020426@gmail.com
When I introduce all the required dates
And I press save
Then The account is created