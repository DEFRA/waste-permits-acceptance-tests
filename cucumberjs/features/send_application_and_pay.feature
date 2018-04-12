Feature: END TO END REGRESSION TEST

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page

    @desktop
    @phone
    @tablet
    @uat
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        When I enter "this is a sensitive information\nAnd I have to declare it" in the declaration text box
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
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "TestUser" in the "First name" field
        And I enter "TestUser" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "Eadyn365test@gmail.com" in the "Main contact email" field
        And I enter "Eadyn365test@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What's the invoice address?" page
        And I should be able to see Select Address dropdown
        When I select first address from the address dropdown
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload site plan is marked as completed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload documents is marked as completed
        When I click on the "Confirm you have suitable vehicle storage areas" link
        Then I am on the "Confirm you have suitable vehicle storage areas" page
        And I click on "Continue" button
        And Confirm you have suitable vehicle storage areas is marked as completed
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
        When I select first address from the address dropdown
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
        Examples:
            | Permit         | TasklistTitle                                                                              |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17" |
            | "SR2015 No 18" | "Metal recycling, vehicle storage, depollution and dismantling facility - SR2015 No 18"    |

    @desktop
    @phone
    @tablet
    @uat
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        When I enter "this is a sensitive information\nAnd I have to declare it" in the declaration text box
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
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "TestUser" in the "First name" field
        And I enter "TestUser" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "Eadyn365test@gmail.com" in the "Main contact email" field
        And I enter "Eadyn365test@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What's the invoice address?" page
        And I should be able to see Select Address dropdown
        When I select first address from the address dropdown
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload fire prevention plan is marked as completed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload site plan is marked as completed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload documents is marked as completed
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
        When I select first address from the address dropdown
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
        Examples:
            | Permit         | TasklistTitle                                                                                |
            | "SR2015 No 13" | "Vehicle storage depollution and dismantling (authorised treatment) facility - SR2015 No 13" |


    @desktop
    @phone
    @tablet
    @uat
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
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
        And I select "Yes, I want to claim confidentiality for part of my application" on confidentiality page
        And I should be able to see the confidentiality declaration text box
        When I enter "this is a sensitive information\nAnd I have to declare it" in the declaration text box
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
        And I am on the Task list page for <TasklistTitle>
        And Give Company Details is marked as completed
        When I click on the "Give contact details" link
        Then I am on the "Who should we contact about this application?" page
        When I enter "TestUser" in the "First name" field
        And I enter "TestUser" in the "Last name" field
        And I enter "07777777777" in the "Telephone number" field
        And I enter "Eadyn365test@gmail.com" in the "Main contact email" field
        And I enter "Eadyn365test@gmail.com" in the "Secratary/directors email" field
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Contact Details is marked as completed
        When I click on the "Give invoicing details" link
        Then I am on the "Where should we send invoices for the annual costs after the permit has been issued?" page
        When I enter "TF3 2BS" in the "Postcode" field on the address page
        And I click on "Find Address" button
        Then I am on the "What's the invoice address?" page
        And I should be able to see Select Address dropdown
        When I select first address from the address dropdown
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Give Invoicing Details is marked as completed
         When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        And Upload documents is marked as completed
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
        Examples:
            | Permit         | TasklistTitle                                                                                              |
            | "SR2010 No 4"  | "Mobile plant for land-spreading - SR2010 No 4"                                                            |
            | "SR2010 No 6"  | "Mobile plant for land-spreading of sewage sludge - SR2010 No 6"                                           |
            | "SR2010 No 5"  | "Mobile plant for reclamation, restoration or improvement of land - SR2010 No 5"                           |
            | "SR2008 No 27" | "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27" |
            | "SR2010 No 11" | "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 11"   |






