Feature:  WE-832 Upload technical competence evidence

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit "SR2010-No-4"
        And I click on "Continue" button
        And I am on the "Apply for a standard rules waste permit" page
        

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the Upload technical management qualifications page, then the Technical qualifications selection page should be displayed

        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the options on the Upload technical management qualifications page, then the respective upload documents page should be displayed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload evidence" page
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Deemed competence or an assessment: upload evidence" page
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "Energy & Utility Skills / ESA Competence Management System" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Energy & Utility Skills / ESA: upload evidence" page
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload JPG technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the "Apply for a standard rules waste permit" page
        And Upload documents is marked as completed

   @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select pdf file to upload
        When I click on "Continue" button
        And I am on the "Apply for a standard rules waste permit" page
        And Upload documents is marked as completed      

  @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to see error message when I do not upload a file and try to proceed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I click on "Continue" button
        Then I should be able to see an error message "You must upload at least one file. Choose a file then press the 'Upload chosen file' button."

 @desktop
 @phone
 @tablet
 @ui
 Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
  When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                   |
            | WAMITAB or EPOC qualification                                                                             |   
            | We’re getting WAMITAB or EPOC qualifications                                                              |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification    |
            | Energy & Utility Skills / ESA Competence Management System                                                |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload evidence" page
        When I select ppt file to upload
        And I click on "Continue" button
        Then I should be able to see an error message "You can only upload PDF or JPG files"
        
