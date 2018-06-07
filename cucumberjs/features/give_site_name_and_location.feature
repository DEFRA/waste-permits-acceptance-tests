Feature:  WE-832 GIVE SITE NAME AND LOCATION PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
         And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Car and vehicle dismantling" option for pemit
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
        #And I should be able to see Select Address dropdown
        #When I click on "Continue" button
        And I should be able to see error "Please enter the address below"
        #When I select first address from the address dropdown
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Give site name and address is marked as completed
