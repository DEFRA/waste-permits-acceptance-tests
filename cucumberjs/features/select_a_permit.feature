Feature:  WE-954 SELECT A PERMIT PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a standard rules environmental permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: As a user, I should be able to see different permit types
        When I am on the "Select a permit" page
        Then I should be able to see <PermitCode> Permit
        And the title of the permit should be <Title>
        Examples:
            | PermitCode     | Title                                                                                                                                                            |
            | "SR2010 No 4"  | "Mobile plant for land-spreading\nSpreading waste for agricultural or ecological benefit - up to 10 waste types with 50 hectares per deployment"                 |
            | "SR2010 No 6"  | "Mobile plant for land-spreading of sewage sludge\nDeployment maximum 250 tonnes per hectare over 50 hectares"                                                   |
            | "SR2010 No 5"  | "Mobile plant for reclamation, restoration or improvement of land\nSpreading waste to create a soil profile - up to 10 waste types per hectare over 50 hectares" |
            | "SR2008 No 27" | "Mobile plant for the treatment of soils and contaminated material, substances or products"                                                                      |
            | "SR2010 No 11" | "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate\nLess than 75,000 tonnes per deployment"                                |
            | "SR2010 No 12" | "Treatment of waste to produce soil, soil substitutes and aggregate\nLess than 75,000 tonnes per year"                                                           |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility\nLess than 5,000 tonnes per site"                                                     |

    @desktop
    @phone
    @tablet
    @ui
    Scenario Outline: User should be able to select a permit and continue to the task list of that permit
        When I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TaskListTitle>
        Examples:
            | Permit         | TaskListTitle                                                                                              |
            | "SR2010 No 4"  | "Mobile plant for land-spreading - SR2010 No 4"                                                            |
            | "SR2010 No 6"  | "Mobile plant for land-spreading of sewage sludge - SR2010 No 6"                                           |
            | "SR2010 No 5"  | "Mobile plant for reclamation, restoration or improvement of land - SR2010 No 5"                           |
            | "SR2008 No 27" | "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27" |
            | "SR2010 No 11" | "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 11"   |
            | "SR2010 No 12" | "Treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 12"                        |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"                 |