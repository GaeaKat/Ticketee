Feature: Deleting projects
	In order to rmeove needless projects
	As a project Manager
	I want to make them dissapear

	Scenario: Deleting a project
		Given that there is a project named "TextMate 2"
		And that I am on the page for "TextMate 2"
		And I delete the project
		Then I should see "Project has been deleted."
		And I should not see "TextMate 2"