Feature: WE-475 CONFIRM CONFIDENTIALITY NEEDS PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Mobile plant for land-spreading or treatment" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit "SR2010 No 4"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to declare a claim to confidentiality details
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        Then Confirm confidentiality needs is marked as completed

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to declare no claim to confidentiality details
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        Then Confirm confidentiality needs is marked as completed
