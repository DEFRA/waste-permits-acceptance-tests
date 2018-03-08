Feature: WE-745 Give application contact details \nI want to give my contact details \nSo that I can get messages about the progress of the application \nAs a permitting manager \nI want to know if the applicant is an agent \nSo that I can get data later on who applied for permits \nAs a permitting officer \nI want a Company Secretary or a director email \nSo that I can avoid posting the permit and any official notices to save time and money

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
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

        
        


       

