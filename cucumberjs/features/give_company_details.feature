Feature: WE-578 GIVE COMPANY DETAILS PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a standard rules environmental permit" page
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
    Scenario: As a user, I should be able to fill in company details for the application with declarations
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "11141218" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "11141218"
        And I should be able to see "Enter a different number" link
        And the Company name should be "A A ALTERNATIVES LIMITED"
        And the Company address should be "Brunel House 340 Firecrest Court, Centre Park, Warrington, Cheshire, WA1 1RG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "New Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director name should be "Angela ANNETT"
        And the month and year of birth should be "February 1954"
        When I enter "04" in the day field of the birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Company Details is marked as completed


    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to fill in company details for the application without declarations and different company name
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "11141218" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "11141218"
        And I should be able to see "Enter a different number" link
        And the Company name should be "A A ALTERNATIVES LIMITED"
        And the Company address should be "Brunel House 340 Firecrest Court, Centre Park, Warrington, Cheshire, WA1 1RG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director name should be "Angela ANNETT"
        And the month and year of birth should be "February 1954"
        When I enter "04" in the day field of the birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Give Company Details is marked as completed

    @desktop
    @phone
    @tablet
    Scenario: As a user, I should be able to change the company
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "" in the "Company number" field
        When I click on "Continue" button
        And I should be able to see error "Enter a company registration number"
        When I enter "11" in the "Company number" field
        And I click on "Continue" button
        And I should be able to see error "Enter a valid company registration number with either 8 digits or 2 letters and 6 digits"
        When I enter "11141218" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "11141218"
        And the Company name should be "A A ALTERNATIVES LIMITED"
        And the Company address should be "Brunel House 340 Firecrest Court, Centre Park, Warrington, Cheshire, WA1 1RG"
        And I should be able to see "Enter a different number" link
        When I click on "Enter a different number" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "10667543" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "10667543"
        And the Company name should be "S&S UMBRELLA LIMITED"
        And the Company address should be "15 Middlegate, Oldham, OL8 3AH"









