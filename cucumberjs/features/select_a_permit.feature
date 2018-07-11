Feature:  WE-954 SELECT A PERMIT PAGE

    Background:
        Given the application has been launched
        And I am on the "Apply for a standard rules environmental permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page

@desktop
@phone
@tablet
    @ui
    Scenario Outline: As a user, I should be able to see different permit types
        And I select "Car and vehicle dismantling" option for pemit
        And I click on "Continue" button
        When I am on the "Select a permit" page
        Then I should be able to see <PermitCode> Permit
        And the title of the permit should be <Title>
        Examples:
            | PermitCode     | Title                                                                                                                                                                             |
            | "SR2015 No 18" | "Metal recycling, vehicle storage, depollution and dismantling facility\nLess than 25,000 tonnes a year of waste metal and less than 5,000 tonnes a year of waste motor vehicles" |
            | "SR2015 No 13" | "Vehicle storage depollution and dismantling (authorised treatment) facility\nLess than 75,000 tonnes per year"                                                                  |
            | "SR2015 No 17" | "Vehicle storage depollution and dismantling authorised treatment facility\nLess than 5,000 tonnes per site"                                                                      |
       
@desktop
@phone
@tablet
    @ui
    Scenario: As a user, I should be able to see different permit types
        And I select "Anaerobic digestion including storing digestate" option for pemit
        And I click on "Continue" button
        When I am on the "Select a permit" page
        And I should be able to see "Showing permits for anaerobic digestion." on the page
        And I should be able to see "SR2012 No 11" on the page
        And I should be able to see "Anaerobic digestion facility including use of the resultant biogas - installation" on the page
        And I should be able to see "Over 100 tonnes per day and up to 100,000 tonnes per year and 5MW thermal input" on the page
        And I should be able to see "SR2012 No 12" on the page
        And I should be able to see "Anaerobic digestion facility including use of the resultant biogas (waste recovery operation)" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2012 No 10" on the page
        And I should be able to see "On-farm anaerobic digestion facility using farm wastes only, including use of the resultant biogas" on the page
        And I should be able to see "Less than 100 tonnes per day" on the page
        And I should be able to see "SR2012 No 9" on the page
        And I should be able to see "On-farm anaerobic digestion using farm wastes including use of biogas - installation" on the page
        And I should be able to see "Over 100 tonnes per day and up to 100,000 tonnes per year and 5MW thermal input" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Composting, sewage or sludge treatment, biogas" option for pemit
        And I click on "Continue" button
        When I am on the "Select a permit" page
        And I should be able to see "Showing permits for composting, sewage or sludge treatment, biogas." on the page
        And I should be able to see "Combustion of biogas in engines at a sewage treatment works" on the page
        And I should be able to see "SR2009 No 4" on the page
        And I should be able to see "Composting biodegradable waste" on the page
        And I should be able to see "Open and contained systems. Less than 500 tonnes on site at any one time." on the page
        And I should be able to see "SR2010 No 14" on the page
        And I should be able to see "Composting biodegradable waste (in open and closed systems)" on the page
        And I should be able to see "Less than 500 tonnes on site at any one time" on the page
        And I should be able to see "SR2011 No 1" on the page
        And I should be able to see "Composting in closed systems" on the page
        And I should be able to see "Treatment limit of 75 tonnes per day" on the page
        And I should be able to see "SR2012 No 3" on the page
        And I should be able to see "Composting in closed systems - installation" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2012 No 4" on the page
        And I should be able to see "Composting in open systems" on the page
        And I should be able to see "Treatment limit of 75 tonnes per day" on the page
        And I should be able to see "SR2012 No 7" on the page
        And I should be able to see "Composting in open systems - installation" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2012 No 8" on the page
        And I should be able to see "Low impact part A installation for the production of biodiesel" on the page
        And I should be able to see "No more than 2,000 tonnes per year" on the page
        And I should be able to see "SR2009 No 3" on the page
        And I should be able to see "Non-hazardous mechanical biological (aerobic) treatment facility" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2015 No 12" on the page
        And I should be able to see "Non-hazardous sludge biological, chemical and physical treatment site" on the page
        And I should be able to see "Less than 250,000 tonnes per year" on the page
        And I should be able to see "SR2008 No 19 250kte" on the page
        And I should be able to see "Non-hazardous sludge biological, chemical and physical treatment site" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2008 No 19 75kte" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Deposit for recovery" option for pemit
        And I click on "Continue" button
        When I am on the "Select a permit" page
        And I should be able to see "Showing permits for deposit for recovery." on the page
        And I should be able to see "Use of waste in a deposit for recovery operation" on the page
        And I should be able to see "Maximum capacity of recovery operation 60,000m3" on the page
        And I should be able to see "SR2015 No 39" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Electrical insulating oil storage" option for pemit
        And I click on "Continue" button
        When I am on the "Select a permit" page
        And I should be able to see "Showing permits for electrical insulating oil storage." on the page
        And I should be able to see "Storage of electrical insulating oils" on the page
        And I should be able to see "Less than 500 tonnes a year" on the page
        And I should be able to see "SR2012 No 15" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Flood risk activities" option for pemit
        And I click on "Continue" button
        When I am on the "Apply for flood risk activities permits" page
        And I should be able to see "Apply for flood risk activities permits" on the page
        And I should be able to see "Change your selection" on the page
        And I should be able to see "How to apply" on the page
        And I should be able to see "Download and fill in the forms to apply for a flood risk activities standard rules permit." on the page
         When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Metal recycling, scrap metal and WEEE - not cars or vehicles" option for pemit
        And I click on "Continue" button
        Then I am on the "Select a permit" page
        And I should be able to see "Showing permits for metal recycling, scrap metal and weee." on the page
        And I should be able to see "Metal recycling and WEEE authorised treatment facility excluding ozone depleting substances" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2015 No 3" on the page
        And I should be able to see "Metal recycling site" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2015 No 14" on the page
        And I should be able to see "Metal recycling site" on the page
        And I should be able to see "Less than 25,000 tonnes per site" on the page
        And I should be able to see "SR2015 No 16" on the page
        And I should be able to see "Storage of furnace ready scrap metal for recovery" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2008 No 22" on the page
        And I should be able to see "Storage of furnace ready scrap metal for recovery" on the page
        And I should be able to see "Less than 1,000,000 tonnes per year" on the page
        And I should be able to see "SR2009 No 7" on the page
        And I should be able to see "WEEE authorised treatment facility excluding ozone depleting substances" on the page
        And I should be able to see "Less than 75,000 tonnes per year" on the page
        And I should be able to see "SR2015 No 15" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Mining, oil and gas" option for pemit
        And I click on "Continue" button
        Then I am on the "Select a permit" page
        And I should be able to see "Showing permits for mining, oil and gas." on the page
        And I should be able to see "Management of inert wastes and unpolluted soil at mines and quarries" on the page
        And I should be able to see "SR2009 No 8" on the page
        And I should be able to see "Storage and handling of crude oil from onshore oil and gas - installation" on the page
        And I should be able to see "Storage capacity limited to 500 tonnes" on the page
        And I should be able to see "SR2015 No 2" on the page
        And I should be able to see "The management of extractive waste, not including a waste facility, generated from onshore oil and gas prospecting excluding hydraulic fracturing" on the page
        And I should be able to see "Only the activities described in 'Ref. WMP3'" on the page
        And I should be able to see "SR2015 No 1" on the page
        And I should be able to see "The management of extractive waste, not including a waste facility, generated from onshore oil and gas prospecting without well stimulation" on the page
        And I should be able to see "SR2014 No 2" on the page
        When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Mobile plant for land-spreading or treatment" option for pemit
        And I click on "Continue" button
        Then I am on the "Select a permit" page
        And I should be able to see "Showing permits for mobile plant." on the page
        And I should be able to see "Mobile plant for land-spreading" on the page
        And I should be able to see "Spreading waste for agricultural or ecological benefit - up to 10 waste types with 50 hectares and total waste storage limit of 3,000 tonnes per deployment" on the page
        And I should be able to see "SR2010 No 4" on the page
        And I should be able to see "Mobile plant for land-spreading of sewage sludge" on the page
        And I should be able to see "Deployment maximum 250 tonnes per hectare over 50 hectares" on the page
        And I should be able to see "SR2010 No 6" on the page
        And I should be able to see "Mobile plant for reclamation, restoration or improvement of land" on the page
        And I should be able to see "Spreading waste to create a soil profile - up to 10 waste types per hectare over 50 hectares. No more than 3,000 tonnes total of waste stored per deployment." on the page
        And I should be able to see "SR2010 No 5" on the page
        And I should be able to see "Mobile plant for the treatment of soils and contaminated material, substances or products" on the page
        And I should be able to see "SR2008 No 27" on the page
        And I should be able to see "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate" on the page
        And I should be able to see "Less than 75,000 tonnes per deployment" on the page
        And I should be able to see "SR2010 No 11" on the page
         When I click back
        And I am on the "What do you want the permit for?" page
        And I select "Radioactive substances for non-nuclear sites" option for pemit
        And I click on "Continue" button
        Then I am on the "Apply for radioactive substances for non-nuclear sites permits" page
        And I should be able to see "Change your selection" on the page
        And I should be able to see "How to apply" on the page
        And I should be able to see "Read the guidance about radioactive substances regulation for non-nuclear sites." on the page


