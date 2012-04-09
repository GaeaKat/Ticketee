Feature: Editing Projects
	In order to update project information
	As a User
	I want to be able to do that through an interface
	Background:
		Given that there is a project named "TextMate 2"
		And that I am on the page for "TextMate 2"
		And that I edit that project

	Scenario: Updating a project
		When I change the name to "TextMate 2 beta"
		Then I should see "Project has been updated."
		And I should be on the "TextMate 2 beta" project Page

	Scenario: Updating a project with invalid attributes is bad
		And I change the name to ""
		Then I should see "Project has not been updated."