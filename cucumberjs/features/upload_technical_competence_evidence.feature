Feature:  WE-832 Upload technical competence evidence

Background:
 Given the application has been launched
# And I am on "Apply for a standard rules waste permit - Waste Permits - GOV.UK" page
# And I select "Start a new application" waste permit application page
# And I click on "Continue" button
# And I am on "Select a permit" page
# And I select a permit "SR2010-No-4"
# And I click on "Continue" button
# And I am on the "Task list" page

 @desktop
 @phone
 @tablet
 @ui
Scenario: As a user when I click on the Upload technical management qualifications page, then the Technical qualifications selection page should be displayed
And I am on "Apply for a standard rules waste permit" page
And I select "Start a new application" waste permit application page
And I click on "Continue" button
And I am on "Select a permit" page
# And I select a permit "SR2010-No-4"
# And I click on "Continue" button
# And I am on the "Task list" page
# When I click on "Upload technical management qualifications"
# Then Technical qualifications selection page is displayed
# And following are the options on the the technical qualifications page:
# |options|
# | WAMITAB qualification |
# | Registered on a course - grace period |
# | Deemed competence |
# | ESA/EU skills |
  
