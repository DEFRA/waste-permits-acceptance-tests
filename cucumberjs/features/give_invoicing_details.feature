Feature: WE-578 GIVE INVOICING DETAILS PAGE

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
    Scenario: As a user, I should be able to select invoicing address for the application
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What's the invoice address?" page
       # And I should be able to see Select Address dropdown
        #When I select first address from the address dropdown
        And I should be able to see error "Please enter the address below"
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Invoicing Details is marked as completed

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be prompted for error messages on the Invoicing address page
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        And I click on "Find Address" button
        And I should be able to see error "Enter a postcode"
        When I enter "T" in the "Postcode" field on the address page
        And I click on "Find Address" button
        And I should be able to see error "Enter a valid postcode"
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        #Then I am on the "What's the invoice address?" page
        #And I should be able to see Select Address dropdown
        And I should be able to see error "Enter the building name or number\nEnter an address line 1\nEnter a town or city"
        #When I click on "Continue" button
        #And I should be able to see error "Select an address"
        #When I select first address from the address dropdown
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Invoicing Details is marked as completed

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to manually enter invoicing address for the application
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Invoicing Details is marked as completed
