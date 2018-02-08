Feature: Confirm you can meet the rules page

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit "SR2010-No-4"
        And I click on "Continue" button
        And I am on the Task list page

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to fill in contact details for the application
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
    When I enter "TestUser" in the "First name" field
        
        