Feature:  WE-832 UPLOAD FIRE PREVENTION PLAN PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
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
        Then I should be able to see an error message "You must upload at least one file. Choose a file then press the 'Upload chosen file' button."

    @desktop
    @phone
    @tablet
    @ui
    Scenario: As a user, when I try to upload a wrong file, I should be able to see error message
        When I click on the "Upload the fire prevention plan" link
        Then I am on the "Upload the fire prevention plan" page
        When I select ppt file to upload
        And I click on "Continue" button
        Then I should be able to see an error message "You can only upload PDF or JPG files"

