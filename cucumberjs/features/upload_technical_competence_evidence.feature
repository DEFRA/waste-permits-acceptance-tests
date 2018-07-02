Feature:  WE-832 UPLOAD TECHNICAL COMPETENCE EVIDENCE PAGE

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
    @ui
    Scenario: As a user when I click on the Upload technical management qualifications page, then the Technical qualifications selection page should be displayed

        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        And I should be able to see text:"To prove you are able to manage your operations correctly, you must upload evidence of technical competence qualifications."
        And I should be able to see text:"These could be Waste Management Industry Training and Advisory Board (WAMITAB) certificates, Environmental Permitting Operator's Certificates (EPOC) or an Energy & Utility Skills / Environmental Services Association (ESA) Competence Management System."

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the options on the Upload technical management qualifications page, then the respective upload documents page should be displayed
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And I should be able to see text:"To prove you are able to manage your operations correctly, you must upload evidence of technical competence qualifications."
        And I should be able to see text:"These could be Waste Management Industry Training and Advisory Board (WAMITAB) certificates, Environmental Permitting Operator's Certificates (EPOC) or an Energy & Utility Skills / Environmental Services Association (ESA) Competence Management System."
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        And I should be able to see text:"Upload copies of the certificates."
        And I should be able to see text:"If the qualification is over 2 years old, upload copies of the relevant continuing competence certificates as well."
        And I should be able to see text:"Check the WAMITAB risk tables (opens new tab) to make sure you have the correct qualification for this permit. We will use the WAMITAB database to check that the qualifications are valid."
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Getting a qualification: upload your evidence" page
        And I should be able to see text:"Upload the WAMITAB or EPOC course registration email or letter."
        And I should be able to see text:"You must complete the EPOC course or 4 units of the WAMITAB qualification within 4 weeks of starting operations."
        And I should be able to see text:"You must then get a full qualification within 12 months of starting operations."
        And I should be able to see text:"Check the WAMITAB risk tables (opens new tab) to find the qualifications needed for this permit."
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Deemed competence or an assessment: upload your evidence" page
        And I should be able to see text:"Upload evidence of one of these:"
        And I should be able to see text:"deemed competence"
        And I should be able to see text:"an Environment Agency assessment"
        And I should be able to see text:"that the person responsible was a nominated manager under the transitional provisions for previously exempt activities and passed the general knowledge assessment"
        And I should be able to see text:"Also upload up-to-date relevant WAMITAB continuing competence certificates."
        And I should be able to see text:"You must pass a new continuing competence assessment every 2 years."
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"
        When I click back
        Then I am on the "What evidence of technical competence do you have?" page
        When I click on "Energy & Utility Skills / ESA Competence Management System" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "Energy & Utility Skills / ESA: upload your evidence" page
        And I should be able to see text:"Upload a copy of the Competence Management System certificate."
        And I should be able to see text:"Check the certificate has not expired. They are valid for 3 years."
        And I should be able to see text:"If you are getting a certificate, upload evidence of a contract with an accredited certification body."
        And I should be able to see text:"After 4 weeks you must have evidence of an agreed schedule for audit and certification and after 6 months evidence of a completed stage 1 audit. You must have a certified system within 12 months of starting operations at the site."
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"
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
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "WAMITAB or EPOC qualification" on the Upload technical management qualifications page
        And I click on "Continue" button
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select img file to upload
        And I select another file to upload
        When I select doc file to upload
        And I should be able to see text:"Uploaded files"
        And I should be able to see text:"CRP_Word-Template-Guide.doc"
        And I should be able to see text:"Example.jpg"
        When I click on "Continue" button
        Then I am on the "Upload details for all technically competent managers" page
        And I should be able to see text:"Download this form and save on your computer"
        And I should be able to see text:"Technically competent manager form (Word doc) | Open Document Text"
        And I should be able to see text:"Complete the form and save it again"
        And I should be able to see text:"You will need to give name, date of birth, email and phone numbers for each manager and the permit numbers and addresses for the operations they manage. We will not include dates of birth in the public permit register."
        And I should be able to see text:"Upload the completed form"
        And I should be able to see text:"DOC, DOCX, PDF or ODT files"
        And I should be able to see text:"30MB maximum file size"
        When I select pdf file to upload
        And I select another file to upload
        When I select doc file to upload
        And I should be able to see text:"Uploaded files"
        And I should be able to see text:"CRP_Word-Template-Guide.doc"
        And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Upload documents is marked as completed

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "We’re getting WAMITAB or EPOC qualifications" on the Upload technical management qualifications page
        And I click on "Continue" button
       Then I am on the "Getting a qualification: upload your evidence" page
        When I select pdf file to upload
        And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
         Then I am on the "Upload details for all technically competent managers" page
          When I select pdf file to upload
           And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Upload documents is marked as completed

       @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
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
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Upload documents is marked as completed     

               @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the technical competencies
        When I click on the "Upload technical management qualifications" link
        Then I am on the "What evidence of technical competence do you have?" page
        And following are the options on the the technical qualifications page:
            | options                                                                                                |
            | WAMITAB or EPOC qualification                                                                          |
            | We’re getting WAMITAB or EPOC qualifications                                                           |
            | Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification |
            | Energy & Utility Skills / ESA Competence Management System                                             |
        When I click on "Energy & Utility Skills / ESA Competence Management System" on the Upload technical management qualifications page
        And I click on "Continue" button
       Then I am on the "Energy & Utility Skills / ESA: upload your evidence" page
        When I select pdf file to upload
        And I should be able to see text:"sample.pdf"
        When I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And Upload documents is marked as completed   

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to see error message when I do not upload a file and try to proceed
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
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I click on "Continue" button
        And I should be able to see text:"Choose and upload a file"

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
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
        Then I am on the "WAMITAB or EPOC: upload your evidence" page
        When I select ppt file to upload
        And I should be able to see text:"You can only upload PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        When I select 40MB file to upload
        And I should be able to see text:"That file is too big. Upload a file that is no more than 30MB."
        

