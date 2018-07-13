Feature: END TO END REGRESSION TEST

@Smoke
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a standard rules environmental permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Car and vehicle dismantling" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        ## suitable storage #####
        When I click on the "Confirm you have suitable vehicle storage areas" link
        Then I am on the "Where does the vehicle storage area drain to?" page
        When I click on "Sewer" button on the Confirm vehicle storage area
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Confirm you have suitable vehicle storage areas is marked as completed
        ## confirm confidentiality ####
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm meet the rules ####
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        # give company details ####
        When I click on the "Give company details" link
        Then I am on the "What is the UK company registration number?" page
        When I enter "08260623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "08260623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "PAMTECHNO LTD"
        And the Company address should be "6 Embleton Road, Bristol, BS10 6DS"
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Amruta Arvind BENDRE"
        When I enter "25" in the day field of the director "1" birthdate
        And the director "2" name should be "Prateek Kumar SHIRDHONKAR"
        When I enter "04" in the day field of the director "2" birthdate
        And I click on "Continue" button
        Then I am on the "What is the email address for the Company Secretary or a director?" page
        And I enter "amruta.bendre.ea@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        ## contact details ####
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "Amruta" in the "First name" field
        And I enter "Bendre" in the "Last name" field
        And I enter "07429926287" in the "Telephone number" field
        And I enter "amruta.bendre@gmail.com" in the "Main contact email" field
        #And I enter "URSR2015No17@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
        ## invoice address ####
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "BS10 6DS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I click on  I can't find address in the link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "6" in the "Building Number" field on the address page
        And I enter "Embleton road" in the "Address Line 1" field on the address page
        And I enter "Bristol" in the "Address Line 2" field on the address page
        And I enter "Bristol" in the "Town or City" field on the address page
        And I enter "BS10 6DS" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        ## fire prevention plan ####
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        ## site plan upload ####
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload site plan is marked as completed
        ## upload technical management ####
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Deemed competence or an assessment: upload your evidence" page
        When I select pdf file to upload
        And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select pdf file to upload
        And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload documents is marked as completed
        ## give site name and location ####
        When I click on the "Give site name and location" link
        Then I am on the "What is the site name?" page
        When I enter "UR SR2015 No 17 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What is the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What is the postcode for the site?" page
        When I enter "BS10 6DS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What is the site address?" page
        When I click on  I can't find address in the link
        Then I am on the "Enter the site address" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        ## check cost and processing time ####
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        ## saev application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "amruta.bendre.ea.ga@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        ## send application and pay ####
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "Card" payment method
        When I click on "Continue" button
        Then I am on the "Enter card details" page for payment
        When I enter "4242424242424242" in the card number
        And I enter "01" in Expiry month
        And I enter "22" in the Expiry year
        And I enter "UR Test" in the cardholders name
        And I enter "111" in the security code
        And I enter "UR Test Address ln1" in card address line 1
        And I enter "UR Test Address ln2" in card address line 2
        And I enter "Bristol" in the address City
        And I enter "BS1 5AH" in the uk postcode
        And I enter "amruta.bendre@gmail.com" in the email on the payment screen
        And I submit card details
        And I am on the "Confirm your payment" page for payment
        When I click on Confirm payment on the payment page
        Then I am on the "Application and card payment received" page
        And the application id is displayed
        Examples:
            | Permit         | TasklistTitle                                                                              |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17" |
            | "SR2015 No 18" | "Metal recycling, vehicle storage, depollution and dismantling facility - SR2015 No 18"    |
            | "SR2015 No 13" | "Vehicle storage depollution and dismantling (authorised treatment) facility - SR2015 No 13"|

#Rest of the tests are in e2e_test_for_user_research.feature