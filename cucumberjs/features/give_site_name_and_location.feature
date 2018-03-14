Feature:  WE-832 GIVE SITE NAME AND LOCATION PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit "SR2015 No 17"
        And I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the Upload site plan, then the Upload site plan page should be displayed
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What's the site address?" page
        And I should be able to see Select Address dropdown
        When I click on "Continue" button
        And I should be able to see error "Select an address"
        When I select first address from the address dropdown
        And I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Give site name and address is marked as completed
