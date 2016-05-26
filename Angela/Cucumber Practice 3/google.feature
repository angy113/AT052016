Feature: Testing google main page

Scenario: The main page appear
  Given the Url www.google.com
	When I write the url in the searcher
	And I press enter
	And I wait some seconds
	Then The main page appear

Scenario: Find information
  Given I want to find colors
  	When I write colors in the google searcher
  	And I press search in google
  	Then The suggestions appear

Scenario: The google searcher accept all king of characters
  Given numbers
  	When I write some numbers in the google searcher
  	And I press search in google
  	Then The suggestions of the search appear

  Given some special characters
  	When I write dots and quotation mark
  	And I press search in google
  	Then The suggestions of the search appear

Scenario: Perform specific searches on google using keywords
  Given Search an exact expression
  	When I write something bettwen quotation marks like"The Star Wars"
  	And I press search in google
  	Then Only appear suggestion with the exact expression The star wars

  Given Looking for one or the other
  	When I write something using the keyword OR or | 
  		like galaxies OR stars or galaxies | stars
  	And  I press search in google
  	Then Appear results that alternate both, a word as other

  Given Search excluding a word
  	When I write something use - like War -Galaxies
  	And I press search in google
  	Then Appear results that don't include galaxies word

  Given Search in a specific web
  	When I write something using the keyword site: like Macbook site:apple.com
  	And I press search in google
  	Then Appear results about Mackbook only in apple.com

  Given Search a specific filetype
  	When I write something using the keyword filetype: like Manual HP filetype:pdf
  	And I press search in google
  	Then Appear results about MAnual HP only in pdf


