Feature: Daily Activities

Background: A new Homwork
    Given A new activity
    When The teacher gives homework
    Then I have a new task with the state to do



Scenario: Change State
Given a board like this
| Activity |  State       |
| SWF      |  To do	      |
| BDT      |  In Progress |  
| PROG01   |  Done        |  
When I start doing the SWF homework
Then the State is going to change to In Progress
And the board should look like
| Activity |  State       |
| SWF      |  In Progress |
| BDT      |  In Progress |  
| PROG01   |  Done        | 


Scenario: In progress
	Given A a BDT task
	When I start doing the homework
	Then The task pass to state in progress

	Given A a BDT task in progress
	When I finish the homework
	Then The task pass to state done