Given /^I am on the homepage$/ do
  visit('/')
end

When /^I navigate to the new project creation page$/ do
  click_link('New Project')
end

When /^I create a new project$/ do
  fill_in('Name',:with=>'TextMate 2')
  click_button('Create Project')
end

Then /^I should be shown the project created verification message$/ do
  page.should have_content("Project has been created.")
end

Then /^I should be on the project page for the new project$/ do
  current_path.should == project_path(Project.find_by_name!('TextMate 2'))
  page.should have_content("TextMate 2 - Projects - Ticketee")
end

When /^I try to create a project without a name$/ do
  click_button('Create Project')
end
Then /^I should be informed that the project has not been created$/ do
  page.should have_content("Project has not been created.")
end

Then /^I should be told that the name is required$/ do
  page.should have_content("Name can't be blank")
end

Given /^that there is a project named "([^"]*)"$/ do |name|
 	FactoryGirl.create(:project,:name=>name)
 end

When /^I go to "([^"]*)" project Page$/ do |name|
	visit('/')
  	click_link(name)
end

Then /^I should be on the "([^"]*)" project Page$/ do |name|
  page.should have_content(name+" - Projects - Ticketee")
end
Given /^that I am on the page for "([^"]*)"$/ do |name|
  visit('/')
  click_link(name)
end

Given /^that I edit that project$/ do
  click_link('Edit Project')
end

When /^I change the name to "([^"]*)"$/ do |name|
  fill_in('Name',:with=>name)
  click_button('Update Project')
end

Then /^I should see "([^"]*)"$/ do |name|
  page.should have_content(name)
end

Given /^I delete the project$/ do
  click_link('Delete Project')
end

Then /^I should not see "([^"]*)"$/ do |name|
  page.should have_no_content(name)
end