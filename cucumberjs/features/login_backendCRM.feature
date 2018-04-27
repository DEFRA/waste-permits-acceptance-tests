Feature: Login Waste Permits Backend

Background:
  #Given the application has been launched
  #And the app is started after being configured

 @desktop
 @phone
 @tablet
  Scenario: Login Waste Permits Backend
  Given the CRM application has been launched
  And I am on the CRM login page
  And I login as "amruta.bendre@defradev.onmicrosoft.com" password "W@stePermits1"
  Then I am logged in to CRM as "Amruta Bendre AG-EA-LP-QA-MASTER"
  When I click on LP tab
  And I select "Applications" from the LP menu
  Then I am on the Applications page
  # #When I enter "WE5569QA/A001" in the search criteria
  # When I click on the New Application button
  # #Then I am on the New Applications page
  # When I enter "Manual1 Test" in the customer id field