Feature:  WE-832 Upload technical competence evidence

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        #And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit "SR2010-No-4"
        And I click on "Continue" button
        And I am on the Task list page

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the Upload technical management qualifications page, then the Technical qualifications selection page should be displayed

        When I click on the "Upload technical management qualifications" link
        Then I am on the "Who will provide technical management on your site?" page
        And following are the options on the the technical qualifications page:
            | options                               |
            | WAMITAB qualification                 |
            | Registered on a course - grace period |
            | Deemed competence                     |
            | ESA/EU skills                         |


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the options on the Upload technical management qualifications page, then the respective upload documents page should be displayed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "Who will provide technical management on your site?" page
        And following are the options on the the technical qualifications page:
            | options                               |
            | WAMITAB qualification                 |
            | Registered on a course - grace period |
            | Deemed competence                     |
            | ESA/EU skills                         |
        When I click on "WAMITAB qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the WAMITAB certificate" page
        When I click back
        Then I am on the "Who will provide technical management on your site?" page
        When I click on "Registered on a course - grace period" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the course registration email or letter" page
        When I click back
        Then I am on the "Who will provide technical management on your site?" page
        When I click on "Deemed competence" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload evidence of their qualification" page
        When I click back
        Then I am on the "Who will provide technical management on your site?" page
        When I click on "ESA/EU skills" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the ESA EU Skills scheme certificate" page
        When I click back
        Then I am on the "Who will provide technical management on your site?" page


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "Who will provide technical management on your site?" page
        And following are the options on the the technical qualifications page:
            | options                               |
            | WAMITAB qualification                 |
            | Registered on a course - grace period |
            | Deemed competence                     |
            | ESA/EU skills                         |
        When I click on "WAMITAB qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the WAMITAB certificate" page
        When I select img file to upload
        And I select pdf file to upload
        When I click on "Continue" button
        And I am on the Task list page
        And Upload documents is marked as completed

  @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to see error message when I do not upload a file and try to proceed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "Who will provide technical management on your site?" page
        And following are the options on the the technical qualifications page:
            | options                               |
            | WAMITAB qualification                 |
            | Registered on a course - grace period |
            | Deemed competence                     |
            | ESA/EU skills                         |
        When I click on "WAMITAB qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the WAMITAB certificate" page
        When I click on "Continue" button
        Then I should be able to see an error message "You must upload at least one file. Choose a file then press the 'Upload chosen file' button."

 @desktop
 @phone
 @tablet
 @ui
 Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
  When I click on the "Upload technical management qualifications" link
        Then I am on the "Who will provide technical management on your site?" page
        And following are the options on the the technical qualifications page:
            | options                               |
            | WAMITAB qualification                 |
            | Registered on a course - grace period |
            | Deemed competence                     |
            | ESA/EU skills                         |
        When I click on "WAMITAB qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Upload the WAMITAB certificate" page
        When I select ppt file to upload
        And I click on "Continue" button
        Then I should be able to see an error message "That file’s too big. Upload a file that’s no more than 30MB."
        
