@login
Feature:Login users

Scenario Outline: Withdraw fixed amount
	Given I have the <Username>
	When I put the <Password>
	Then The application show a <Message>
   
   Examples:
	| Username | Password | Message |
	| angy     | angy123  | Welcome    |
	| dante    | dante123 | Have a nice day |
	| maria    | maria123 | Hello       |

