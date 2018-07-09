Feature:  WE-832 UPLOAD SITE PLAN PAGE

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
    Scenario: As a user when I click on the Upload site plan, then the Upload site plan page should be displayed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        And I should be able to see text:"What the site plan must include"
        And I should be able to see text:"Upload files one at a time"
        And I should be able to see text:"PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        And I should be able to see text:"30MB maximum file size"
        When I click on the "What the site plan must include" link
        And I should be able to see text:"The site plan must include:"
        And I should be able to see text:"all of the land on which your operations take place"
        And I should be able to see text:"an outline of the area you want the permit to cover, clearly marked in green"
        And I should be able to see text:"surrounding local features to help us locate it"
        And I should be able to see text:"the date it was prepared"
        And I should be able to see text:"a scale"
        And I should be able to see text:"a pointer to show north"
        And I should be able to see text:"The plan must be legible at A4 size and drawn accurately to scale. Do not use aerial photos or sketched maps."




    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload JPG technical documents for the technical competencies
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select img file to upload
        When I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Upload site plan is marked as completed

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to upload PDF technical documents for the technical competencies
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select pdf file to upload
        When I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And Upload site plan is marked as completed

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, I should be able to see error message when I do not upload a file and try to proceed
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I click on "Continue" button
        And I should be able to see text:"Choose and upload a file"

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
        When I click on the "Upload the site plan" link
        Then I am on the "Upload the site plan" page
        When I select ppt file to upload
         And I should be able to see text:"You can only upload PDF, DOC, DOCX, XLS, XLSX, JPG, ODT or ODS files"
        When I select 40MB file to upload
        And I should be able to see text:"That file is too big. Upload a file that is no more than 30MB."

