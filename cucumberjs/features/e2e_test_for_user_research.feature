Feature: Login Waste Permits Frontend - For User Research Testing

@Smoke
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2015 No 13 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 13 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 13 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2015No13@gmail.com" in the "Main contact email" field
        And I enter "URSR2015No13@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm you have suitable vehicle storage areas" link
        Then I am on the "Where does the vehicle storage area drain to?" page
        When I click on "Oil Separator" button on the Confirm vehicle storage area
        When I click on "Continue" button
        Then I am on the "Your drainage system is not suitable - please contact us" page
        When I click back
        Then I am on the "Where does the vehicle storage area drain to?" page
        When I click on "Sewer" button on the Confirm vehicle storage area
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Confirm you have suitable vehicle storage areas is marked as completed
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2015 No 13 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2015No13@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit         | TasklistTitle                                                                                |
            | "SR2015 No 13" | "Vehicle storage depollution and dismantling (authorised treatment) facility - SR2015 No 13" |

@Smoke
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2015No17@gmail.com" in the "Main contact email" field
        And I enter "URSR2015No17@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm you have suitable vehicle storage areas" link
        Then I am on the "Where does the vehicle storage area drain to?" page
        When I click on "Oil Separator" button on the Confirm vehicle storage area
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Confirm you have suitable vehicle storage areas is marked as completed
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2015 No 17 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2015No17@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
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
        And I enter "URSR2015No17@gmail.com" in the email on the payment screen
        And I submit card details
        And I am on the "Confirm your payment" page for payment
        When I click on Confirm payment on the payment page
        Then I am on the "Application and card payment received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit         | TasklistTitle                                                                              |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17" |


#SR2012 No 12
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Anaerobic digestion including storing digestate" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2012No12@gmail.com" in the "Main contact email" field
        And I enter "URSR2012No12@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2012 No 12 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2012No12@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
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
        And I enter "URSR2012No12@gmail.com" in the email on the payment screen
        And I submit card details
        And I am on the "Confirm your payment" page for payment
        When I click on Confirm payment on the payment page
        Then I am on the "Application and card payment received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit         | TasklistTitle                                                                                                  |
            | "SR2012 No 12" | "Anaerobic digestion facility including use of the resultant biogas (waste recovery operation) - SR2012 No 12" |

#SR‌-2010-4 Mobile plant for land-spreading 24
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2010No4@gmail.com" in the "Main contact email" field
        And I enter "URSR2010No4@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2010No4@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
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
        And I enter "URSR2010No4@gmail.com" in the email on the payment screen
        And I submit card details
        And I am on the "Confirm your payment" page for payment
        When I click on Confirm payment on the payment page
        Then I am on the "Application and card payment received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                   |
            | "SR2010 No 4" | "Mobile plant for land-spreading - SR2010 No 4" |


#SR‌-2015-6 Household, commercial and industrial waste transfer station with treatment 24
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Waste transfer station or amenity site with or without treatment" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2015 No 6 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm you can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        #give company details
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 6 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 6 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        #contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2015No6@gmail.com" in the "Main contact email" field
        And I enter "URSR2015No6@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        #fire plan upload
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        #upload site plan
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #upload technical management
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #site name and location
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2015 No 6 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #check cost and processing time
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #save application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2015No6@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        #send application and pay
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                                                              |
            | "SR2015 No 6" | "Household, commercial and industrial waste transfer station with treatment - SR2015 No 6" |

#SR‌-2012-10 On-farm anaerobic digestion facility, including biogas 14
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Anaerobic digestion including storing digestate" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2012 No 10 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm you can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        #give company details
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2012 No 10 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2012 No 10 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        #contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2012No10@gmail.com" in the "Main contact email" field
        And I enter "URSR2012No10@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        #upload site plan
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #upload technical management
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #site name and location
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2012 No 10 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #check cost and processing time
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #save application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2012No10@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        #send application and pay
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                                                              |
            | "SR2012 No 10" | "On-farm anaerobic digestion facility using farm wastes only, including use of the resultant biogas - SR2012 No 10" |


#SR‌-2008-27 Mobile plant for the treatment of soils and contaminated materials 13
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2008 No 27 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm you can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        #give company details
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2008 No 27 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2008 No 27 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        #contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2008No27@gmail.com" in the "Main contact email" field
        And I enter "URSR2008No27@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        #upload technical management
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #check cost and processing time
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #save application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2008No27@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #send application and pay
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                                                              |
            | "SR2008 No 27" | "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27" |

#SR‌-2015-39 Use of waste in a deposit for recovery operation 12
#THIS IS A MANUAL FORM

#SR‌-2010-11 Mobile plant for the treatment of waste to produce soil and aggregate 11
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "No" on confidentiality page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "No" option
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "No" option
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2010No4@gmail.com" in the "Main contact email" field
        And I enter "URSR2010No4@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2010No4@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
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
        And I enter "URSR2010No4@gmail.com" in the email on the payment screen
        And I submit card details
        And I am on the "Confirm your payment" page for payment
        When I click on Confirm payment on the payment page
        Then I am on the "Application and card payment received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                   |
            | "SR2010 No 4" | "Mobile plant for land-spreading - SR2010 No 4" |


#SR‌-2008-9 Asbestos waste transfer station 11
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Waste transfer station or amenity site with or without treatment" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2008 No 9 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm you can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        #give company details
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2008 No 9 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2008 No 9 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        #contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2008No9@gmail.com" in the "Main contact email" field
        And I enter "URSR2008No9@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        #upload site plan
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #upload technical management
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #site name and location
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2008 No 9 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #check cost and processing time
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #save application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2008No9@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        #send application and pay
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                                                              |
            | "SR2008 No 9" | "Asbestos waste transfer station - SR2008 No 9" |

#SR‌-2015-4 Household,
@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Waste transfer station or amenity site with or without treatment" option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #confirm confidentiality
        When I click on the "Confirm confidentiality needs" link
        Then I am on the "Is part of your application commercially confidential?" page
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "UR SR2015 No 4 this is a sensitive information\nAnd I have to declare it" in the declaration text box
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        Then Confirm confidentiality needs is marked as completed
        #confirm you can meet the rules
        When I click on the "Confirm that your operation meets the rules" link
        Then I am on the "Confirm your operation meets the rules" page
        When I click on "operation-meets-rules-button" button on the Confirm you meet the rules page
        And I am on the Task list page for <TasklistTitle>
        And Confirm you can meet the rules is marked as completed
        #give company details
        When I click on the "Give company details" link
        Then I am on the "What's the UK company registration number?" page
        When I enter "06919623" in the "Company number" field
        And I click on "Continue" button
        Then I am on the "Is this the right company?" page
        And the Company number should be "06919623"
        And I should be able to see "Enter a different number" link
        And the Company name should be "UR LTD"
        And the Company address should be "25 South Road, Saffron Walden, Essex, CB11 3DG"
        And I should be able to see "That’s not our registered office address" link
        And I should be able to see "We use a different trading name" field
        When I click on "We use a different trading name" field
        And I enter "URNew Business Trading Name" in the "Business trading name" field
        And I click on "Continue" button
        Then I am on the "What are the directors' dates of birth?" page
        And the director "1" name should be "Sebastian Douglas Leonard CLARK"
        When I enter "04" in the day field of the director "1" birthdate
        And I click on "Continue" button
        Then I am on the "Does anyone connected with your business have a conviction for a relevant offence?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 4 My declaration" in the Declaration text
        And I click on "Continue" button
        Then I am on the "Do you have current or past bankruptcy or insolvency proceedings to declare?" page
        When I select "Yes" option
        Then Declaration text area should be displayed
        When I enter "UR SR2015 No 4 My declaration" in the Declaration text
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        #contact details
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "URFirstName" in the "First name" field
        And I enter "URLastName" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "URSR2015No4@gmail.com" in the "Main contact email" field
        And I enter "URSR2015No4@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
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
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        #upload site plan
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #upload technical management
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        When I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        When I select doc file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #site name and location
        When I click on the "Give site name and location" link
        Then I am on the "What's the site name?" page
        When I enter "UR SR2015 No 4 Test Site" in the "Site Name" field
        And I click on "Continue" button
        Then I am on the "What's the grid reference for the centre of the site?" page
        When I enter "ST5813272695" in the "Site Grid Reference" field
        And I click on "Continue" button
        Then I am on the "What's the postcode for the site?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "221b" in the "Building Number" field on the address page
        And I enter "Baker St" in the "Address Line 1" field on the address page
        And I enter "Marylebone" in the "Address Line 2" field on the address page
        And I enter "London" in the "Town or City" field on the address page
        And I enter "NW1 6XE" in the "Postcode" field on the address page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #check cost and processing time
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        #save application
        When I click on the "Save your application" link
        Then I am on the "Save your application" page
        When I enter "URSR2015No4@gmail.com" in the email
        And I click on "Continue" button
        Then I am on the "Make sure this is right" page
        And I click on "Continue" button
        Then I am on the "Check your email" page
        And I click on "I got the email" button
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give site name and address is marked as completed
        #fire prevention plan
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        #send application and pay
        When I click on the "Send application and pay" link
        Then I am on the "Check your answers" page
        When I click on "Continue" button
        Then I am on the "How do you want to pay?" page
        When I select "BACS" payment method
        When I click on "Continue" button
        Then I am on the "You’ve chosen to pay by bank transfer using Bacs" page
        When I send the application
        Then I am on the "Application received" page
        And the application id is displayed
        Then take screenshots
        Examples:
            | Permit        | TasklistTitle                                                               |
            | "SR2015 No 4" | "Household, commercial and industrial waste transfer station - SR2015 No 4" |