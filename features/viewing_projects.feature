Feature: Viewing projects
	In order to assign tickets to a project
	As a user
	I want to be able to see a list of available projects

	Scenario: Listing all projects
		Given that there is a project named "TextMate 2"
		When I go to "TextMate 2" project Page
		Then I should be on the "TextMate 2" project Page