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
    Scenario: As a user, I should be able to confirm that I can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        Then I am on the Task list page
        And Confirm you can meet the rules is marked as completed  
        
