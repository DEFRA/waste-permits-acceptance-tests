Feature: WE-745 GIVE CONTACT DETAILS PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
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
    Scenario: As a user, I should be able to fill in contact details for the application
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "TestUser" in the "First name" field
        And I enter "TestUser" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "Eadyn365test@gmail.com" in the "Main contact email" field
        And I enter "Eadyn365test@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Contact Details is marked as completed

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able get error message for incorrect contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        And I click on "Continue" button
        Then I am on the "Who should we contact about this application?" page
        And I should be able to see error "A problem to fix"
        And I should be able to see error "Enter a first name"
        And I should be able to see error "Enter a last name"
        And I should be able to see error "Enter a telephone number"
        And I should be able to see error "Enter an email address for the main contact"
        And I should be able to see error "Enter an email address for the Company Secretary or a director"
        When I enter "TestUser" in the "First name" field
        And I click on "Continue" button
        Then I should be able to see error "A problem to fix"
        And I should not be able to see error "Enter a first name"
        And I should be able to see error "Enter a last name"
        And I should be able to see error "Enter a telephone number"
        And I should be able to see error "Enter an email address for the main contact"
        And I should be able to see error "Enter an email address for the Company Secretary or a director"
        And I enter "TestUser" in the "Last name" field
        And I click on "Continue" button
        Then I should be able to see error "A problem to fix"
        And I should not be able to see error "Enter a first name"
        And I should not be able to see error "Enter a last name"
        And I should be able to see error "Enter a telephone number"
        And I should be able to see error "Enter an email address for the main contact"
        And I should be able to see error "Enter an email address for the Company Secretary or a director"
        And I enter "07777777777" in the "Telephone number" field
        And I click on "Continue" button
        Then I should be able to see error "A problem to fix"
        And I should not be able to see error "Enter a first name"
        And I should not be able to see error "Enter a last name"
        And I should not be able to see error "Enter a telephone number"
        And I should be able to see error "Enter an email address for the main contact"
        And I should be able to see error "Enter an email address for the Company Secretary or a director"
        And I enter "Eadyn365test@gmail.com" in the "Main contact email" field
        And I click on "Continue" button
        Then I should be able to see error "A problem to fix"
        And I should not be able to see error "Enter a first name"
        And I should not be able to see error "Enter a last name"
        And I should not be able to see error "Enter a telephone number"
        And I should not be able to see error "Enter an email address for the main contact"
        And I should be able to see error "Enter an email address for the Company Secretary or a director"
        And I enter "Eadyn365test@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        Then I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Contact Details is marked as completed

