Feature:  WE-954 TASK LIST PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select "Dummy category" option for pemit
        And I click on "Continue" button

    @desktop
    @phone
    @tablet
    @ui
    Scenario: User should be able to see error message if he doesnt select a permit and wishes to proceed
        When I am on the "Select a permit" page
        And I click on "Continue" button
        And I should be able to see error "Select the permit you want"
        And I select a permit "SR2010 No 4"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 4 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 4"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |


    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 6 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 6"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading of sewage sludge - SR2010 No 6"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 5 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 5"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for reclamation, restoration or improvement of land - SR2010 No 5"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |


    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2008 No 27 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2008 No 27"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |


    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 11 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 11"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 11"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |


    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 12 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 12"
        And I click on "Continue" button
        And I am on the Task list page for "Treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 12"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                            |
            | "Confirm you can meet the rules"    |
            | "Give contact details"              |
            | "Give technical management details" |
            | "Confirm confidentiality needs"     |
            | "Give invoicing details"            |
            | "Send application and pay"          |
            | "Give site name and location"       |
            | "Upload the site plan"              |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2015 No 17 :- User should be able to see task list of that permit selected
        When I am on the "Select a permit" page
        And I select a permit "SR2015 No 17"
        And I click on "Continue" button
        And I am on the Task list page for "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"
        And I should be able to see <TaskList> task link
        Examples:
            | TaskList                                          |
            | "Confirm you can meet the rules"                  |
            | "Give contact details"                            |
            | "Give company details"                            |
            | "Give technical management details"               |
            | "Confirm confidentiality needs"                   |
            | "Give invoicing details"                          |
            | "Send application and pay"                        |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |

    #####################################

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 4 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 4"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading - SR2010 No 4"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |


    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 6 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 6"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for land-spreading of sewage sludge - SR2010 No 6"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 5 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 5"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for reclamation, restoration or improvement of land - SR2010 No 5"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2008 No 27 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2008 No 27"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 11 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 11"
        And I click on "Continue" button
        And I am on the Task list page for "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 11"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Give site name and location"                     |
            | "Upload the site plan"                            |
            | "Upload the fire prevention plan"                 |
            | "Confirm you have suitable vehicle storage areas" |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: SR2010 No 12 :- User should not be able to see task list which is not associated with that permit
        When I am on the "Select a permit" page
        And I select a permit "SR2010 No 12"
        And I click on "Continue" button
        And I am on the Task list page for "Treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 12"
        And I should not be able to see <NotInTaskList> task link
        Examples:
            | NotInTaskList                                     |
            | "Upload fire prevention plan"                     |
            | "Confirm you have suitable vehicle storage areas" |