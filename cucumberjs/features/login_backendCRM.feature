# Feature: Login Waste Permits Backend

# Background:
#   #Given the application has been launched
#   #And the app is started after being configured

#  @desktop
#  @phone
#  @tablet
#   Scenario: Login Waste Permits Backend
#   Given the CRM application has been launched
#   And I am on the CRM login page
#   And I login as "amruta.bendre@defradev.onmicrosoft.com" password "W@ste-Permits"
#   Then I am logged in to CRM as "Amruta Bendre EA-LP-CRM-QA"
#   When I click on LP tab
#   And I select "Applications" from the LP menu
#   Then I am on the Applications page
#   When I click on the New Application button
#   #Then I am on the New Applications page
#   When I enter "Manual1 Test" in the customer id field

Feature: Login Waste Permits Frontend - For User Research Testing

@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        # Given the application has been launched
        # And I am on the "Apply for a mobile plant standard rules waste permit" page
        # And I select "Start a new application" waste permit application page
        # And I click on "Continue" button
        # And I am on the "Who will be the permit holder?" page
        # And I select "Limited Company" option for pemit
        # And I click on "Continue" button
        # And I am on the "What do you want the permit for?" page
        # And I select "Car and vehicle dismantling" option for pemit
        # And I click on "Continue" button
        # And I am on the "Select a permit" page
        # And I select a permit <Permit>
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # When I click on the "Confirm confidentiality needs" link
        # Then I am on the "Is part of your application commercially confidential?" page
        # And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        # And I should be able to see the confidentiality declaration text box
        # When I enter "UR SR2015 No 13 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # Then Confirm confidentiality needs is marked as completed
        # When I click on the "Confirm that your operation meets the rules" link
        # Then I am on the "Confirm your operation meets the rules" page
        # When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        # And I am on the Task list page for <TasklistTitle>
        # And Confirm you can meet the rules is marked as completed
        # When I click on the "Give company details" link
        # Then I am on the "What's the UK company registration number?" page
        # When I enter "06919623" in the "Company number" field
        # And I click on "Continue" button
        # Then I am on the "Is this the right company?" page
        # And the Company number should be "06919623"
        # And I should be able to see "Enter a different number" link
        # And the Company name should be "UR LTD"
        # And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        # And I should be able to see "That’s not our registered office address" link
        # And I should be able to see "We use a different trading name" field
        # When I click on "We use a different trading name" field
        # And I enter "URNew Business Trading Name" in the "Business trading name" field
        # And I click on "Continue" button
        # Then I am on the "What are the directors' dates of birth?" page
        # And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        # When I enter "04" in the day field of the director "1" birthdate
        # And I click on "Continue" button
        # Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        # When I select "Yes" option
        # Then Declaration text area should be displayed
        # When I enter "UR SR2015 No 13 My declaration" in the Declaration text
        # And I click on "Continue" button
        # Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        # When I select "Yes" option
        # Then Declaration text area should be displayed
        # When I enter "UR SR2015 No 13 My declaration" in the Declaration text
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Give Company Details is marked as completed
        # When I click on the "Give contact details" link
        # Then I am on the "Who should we contact about this application?" page
        # When I enter "URFirstName" in the "First name" field
        # And I enter "URLastName" in the "Last name" field
        # And I enter "07777777777" in the "Telephone number" field
        # And I enter "URSR2015No13@gmail.com" in the "Main contact email" field
        # And I enter "URSR2015No13@gmail.com" in the "Secratary/directors email" field
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Give Contact Details is marked as completed
        # When I click on the "Give invoicing details" link
        # Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        # When I enter "TF3 2BS" in the "Postcode" field on the address page
        # And I click on "Find Address" button
        # Then I am on the "What's the invoice address?" page
        # When I click on  I can't find address in the link
        # Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        # When I enter "221b" in the "Building Number" field on the address page
        # And I enter "Baker St" in the "Address Line 1" field on the address page
        # And I enter "Marylebone" in the "Address Line 2" field on the address page
        # And I enter "London" in the "Town or City" field on the address page
        # And I enter "NW1 6XE" in the "Postcode" field on the address page
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Give Invoicing Details is marked as completed
        # When I click on the "Upload the fire prevention plan" link
        # Then I am on the "Upload the fire prevention plan" page
        # When I select img file to upload
        # Then I am on the "Upload the fire prevention plan" page
        # When I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Upload fire prevention plan is marked as completed
        # When I click on the "Upload the site plan" link
        # Then I am on the "Upload the site plan" page
        # When I select img file to upload
        # When I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # When I click on the "Upload technical management qualifications" link
        # Then I am on the "What evidence of technical competence do you have?" page
        # When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        # And I click on "Continue" button
        # Then I am on the "WAMITAB or EPOC: upload your evidence" page
        # When I select img file to upload
        # When I click on "Continue" button
        # Then I am on the "WAMITAB or EPOC: upload your evidence" page
        # When I click on "Continue" button
        # Then I am on the "Upload details for all technically competent managers" page
        # When I select doc file to upload
        # When I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # When I click on the "Confirm you have suitable vehicle storage areas" link
        # Then I am on the "Where does the vehicle storage area drain to?" page
        # When I click on "Oil Separator" button on the Confirm vehicle storage area
        # When I click on "Continue" button
        # Then I am on the "Your drainage system is not suitable - please contact us" page
        # When I click back
        # Then I am on the "Where does the vehicle storage area drain to?" page
        # When I click on "Sewer" button on the Confirm vehicle storage area
        # When I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Confirm you have suitable vehicle storage areas is marked as completed
        # When I click on the "Give site name and location" link
        # Then I am on the "What's the site name?" page
        # When I enter "UR SR2015 No 13 Test Site" in the "Site Name" field
        # And I click on "Continue" button
        # Then I am on the "What's the grid reference for the centre of the site?" page
        # When I enter "ST5813272695" in the "Site Grid Reference" field
        # And I click on "Continue" button
        # Then I am on the "What's the postcode for the site?" page
        # When I enter "TF3 2BS" in the "Postcode" field on the address page
        # And I click on "Find Address" button
        # Then I am on the "What's the site address?" page
        # When I click on  I can't find address in the link
        # Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        # When I enter "221b" in the "Building Number" field on the address page
        # And I enter "Baker St" in the "Address Line 1" field on the address page
        # And I enter "Marylebone" in the "Address Line 2" field on the address page
        # And I enter "London" in the "Town or City" field on the address page
        # And I enter "NW1 6XE" in the "Postcode" field on the address page
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # When I click on the "Check cost and processing time" link
        # Then I am on the "Costs and processing time" page
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # When I click on the "Save your application" link
        # Then I am on the "Save your application" page
        # When I enter "URSR2015No13@gmail.com" in the email
        # And I click on "Continue" button
        # Then I am on the "Make sure this is right" page
        # And I click on "Continue" button
        # Then I am on the "Check your email" page
        # And I click on "I got the email" button
        # And I click on "Continue" button
        # And I am on the Task list page for <TasklistTitle>
        # And Give site name and address is marked as completed
        # When I click on the "Send application and pay" link
        # Then I am on the "Check your answers" page
        # When I click on "Continue" button
        # Then I am on the "How do you want to pay?" page
        # When I select "BACS" payment method
        # When I click on "Continue" button
        # Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        # When I send the application
        # Then I am on the "Application received" page
        # And the application id is displayed
        Given the CRM application has been launched
        And I am on the CRM login page
        And I login as "wastetest1@defradev.onmicrosoft.com" password "W@stePermits1"
        Then I am logged in to CRM as "Waste Test 1 AG-EA-LP-QA-MASTER"
        When I click on LP tab
        And I select "Applications" from the LP menu
        Then I am on the Applications page
        #When I search for "WE6081QA/A001" application
        Examples:
            | Permit         | TasklistTitle                                                                                |
            | "SR2015 No 13" | "Vehicle storage depollution and dismantling (authorised treatment) facility - SR2015 No 13" |
