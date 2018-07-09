Feature:  WE-832 UPLOAD FIRE PREVENTION PLAN PAGE

    Background:
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
        And I select a permit "SR2015 No 17"
        And I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user when I click on the Upload fire prevention plan, then the Upload fire prevention plan page should be displayed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        And I should be able to see text:"Upload the fire prevention plan"
        And I should be able to see text:"Upload a copy of your fire prevention plan. It should comply with the Fire prevention plan guidance on GOV.UK (opens new tab)"
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"


    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload JPG technical documents for the technical competencies
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Upload fire prevention plan is marked as completed

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the fire prevention plan
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select pdf file to upload
        When I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Upload fire prevention plan is marked as completed

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to see error message when I do not upload a file and try to proceed
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I click on "Continue" button
         And I should be able to see text:"Choose and upload a file"

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select ppt file to upload
         And I should be able to see text:"You can only upload PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        When I select 40MB file to upload
        And I should be able to see text:"That file is too big. Upload a file that is no more than 30MB."

