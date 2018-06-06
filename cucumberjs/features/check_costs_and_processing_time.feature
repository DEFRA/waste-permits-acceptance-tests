Feature: Check cost and Processing Time

@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a use I should be able to apply for a waste permit for a limited company
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select <PermitOption> option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the Task list page for <TasklistTitle>
        When I click on the "Check cost and processing time" link
        Then I am on the "Costs and processing time" page
        And the cost to apply is <Cost>
        And the time to wait is <Time>
        And I click on "Continue" button
        And Check costs and processing time is marked as completed
        And I am on the Task list page for <TasklistTitle>
        Examples:
            | PermitOption                                                                             | Permit                | TasklistTitle                                                                                                                  | Cost    | Time             |
            | "Car and vehicle dismantling"                                                            | "SR2015 No 13"        | "Vehicle storage depollution and dismantling (authorised treatment) facility - SR2015 No 13"                                   | "3,926" | "up to 13 weeks" |
            | "Car and vehicle dismantling"                                                            | "SR2015 No 17"        | "Vehicle storage depollution and dismantling authorised treatment facility - SR2015 No 17"                                     | "3,926" | "up to 13 weeks" |
            | "Car and vehicle dismantling"                                                            | "SR2015 No 18"        | "Metal recycling, vehicle storage, depollution and dismantling facility - SR2015 No 18"                                        | "3,926" | "up to 13 weeks" |
            | "Anaerobic digestion including storing digestate"                                        | "SR2012 No 12"        | "Anaerobic digestion facility including use of the resultant biogas (waste recovery operation) - SR2012 No 12"                 | "2,641" | "up to 13 weeks" |
            | "Anaerobic digestion including storing digestate"                                        | "SR2012 No 10"        | "On-farm anaerobic digestion facility using farm wastes only, including use of the resultant biogas - SR2012 No 10"            | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2012 No 3"         | "Composting in closed systems - SR2012 No 3"                                                                                   | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2010 No 14"        | "Composting biodegradable waste - SR2010 No 14"                                                                                | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2011 No 1"         | "Composting biodegradable waste (in open and closed systems) - SR2011 No 1"                                                    | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2012 No 7"         | "Composting in open systems - SR2012 No 7"                                                                                     | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2008 No 19 250kte" | "Non-hazardous sludge biological, chemical and physical treatment site - SR2008 No 19 250kte"                                  | "2,641" | "up to 13 weeks" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2008 No 19 75kte"  | "Non-hazardous sludge biological, chemical and physical treatment site - SR2008 No 19 250kte"                                  | "2,641" | "up to 13 weeks" |
            | "Electrical insulating oil storage"                                                      | "SR2012 No 15"        | "Storage of electrical insulating oils - SR2012 No 15"                                                                         | "2,641" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2015 No3"          | "Metal recycling and WEEE authorised treatment facility excluding ozone depleting substances - SR2015 No 3"                    | "3,926" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2015 No14"         | "Metal recycling site - SR2015 No 14"                                                                                          | "3,926" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2015 No16"         | "Metal recycling site - SR2015 No 16"                                                                                          | "3,926" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2008 No22"         | "Storage of furnace ready scrap metal for recovery - SR2008 No 22"                                                             | "3,926" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2009 No7"          | "Storage of furnace ready scrap metal for recovery - SR2009 No 7"                                                              | "3,926" | "up to 13 weeks" |
            | "Metal recycling, scrap metal and WEEE - not cars or vehicles"                           | "SR2015 No15"         | "WEEE authorised treatment facility excluding ozone depleting substances - SR2015 No 15"                                       | "3,926" | "up to 13 weeks" |
            | "Mining, oil and gas"                                                                    | "SR2015 No 2"         | "Storage and handling of crude oil from onshore oil and gas - installation - SR2015 No 2"                                      | "2,641" | "up to 13 weeks" |
            | "Mobile plant for land-spreading or treatment"                                           | "SR2010 No 4"         | "Mobile plant for land-spreading - SR2010 No 4"                                                                                | "2,641" | "up to 13 weeks" |
            | "Mobile plant for land-spreading or treatment"                                           | "SR2010 No 6"         | "Mobile plant for land-spreading of sewage sludge - SR2010 No 6"                                                               | "2,641" | "up to 13 weeks" |
            | "Mobile plant for land-spreading or treatment"                                           | "SR2010 No 5"         | "Mobile plant for reclamation, restoration or improvement of land - SR2010 No 5"                                               | "2,641" | "up to 13 weeks" |
            | "Mobile plant for land-spreading or treatment"                                           | "SR2008 No 27"        | "Mobile plant for the treatment of soils and contaminated material, substances or products - SR2008 No 27"                     | "2,641" | "up to 13 weeks" |
            | "Mobile plant for land-spreading or treatment"                                           | "SR2010 No 11"        | "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 11"                       | "2,641" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2015 No 21"        | "Materials recycling facility - SR2015 No 21"                                                                                  | "3,926" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2015 No 22"        | "Materials recycling facility (no building) - SR2015 No 22"                                                                    | "3,926" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2010 No 18"        | "Storage and treatment of dredgings for recovery - SR2010 No 18"                                                               | "2,641" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2010 No 17"        | "Storage of wastes to be used in land treatment - SR2010 No 17"                                                                | "2,641" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2013 No 1"         | "Treatment of 100 t/y of clinical and healthcare waste - SR2013 No 1"                                                          | "2,641" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2010 No 12"        | "Treatment of waste to produce soil, soil substitutes and aggregate - SR2010 No 12"                                            | "2,641" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2015 No 23"        | "Treatment of waste wood for recovery - SR2015 No 23"                                                                          | "3,926" | "up to 13 weeks" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2015 No 24"        | "Use of waste to manufacture timber or construction products - SR2015 No 24"                                                   | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2008 No 9"         | "Asbestos waste transfer station - SR2008 No 9"                                                                                | "2,641" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2008 No 24"        | "Clinical waste and healthcare waste transfer station - SR2008 No 24"                                                          | "0"     | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2008 No 25"        | "Clinical waste and healthcare waste treatment and transfer station - SR2008 No 25"                                            | "0"     | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 4"         | "Household, commercial and industrial waste transfer station - SR2015 No 4"                                                    | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 8"         | "Household, commercial and industrial waste transfer station with asbestos storage - SR2015 No 8"                              | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 9"         | "Household, commercial and industrial waste transfer station with asbestos storage (no building) - SR2015 No 9"                | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 5"         | "Household, commercial and industrial waste transfer station (no building) - SR2015 No 5"                                      | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 6"         | "Household, commercial and industrial waste transfer station with treatment - SR2015 No 6"                                     | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 10"        | "Household, commercial and industrial waste transfer station with treatment and asbestos storage - SR2015 No 10"               | "3,926" | "up to 13 weeks" |
            | "Waste transfer station or amenity site with or without treatment"                       | "SR2015 No 11"        | "Household, commercial and industrial waste transfer station with treatment and asbestos storage (no building) - SR2015 No 11" | "3,926" | "up to 13 weeks" |


@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a user, when i select a permit which is not applicable, then I should be able to download the manual form
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select <PermitOption> option for pemit
        And I click on "Continue" button
        And I am on the "Select a permit" page
        And I select a permit <Permit>
        And I click on "Continue" button
        And I am on the <TasklistTitle> page
        And I should be able to see <link> to download manual guidance
        Examples:
            | PermitOption                                                                             | Permit         | TasklistTitle                                                                                                                                                               | link                                                                                                                                                   |
            | "Anaerobic digestion including storing digestate"                                        | "SR2012 No 11" | "Apply for anaerobic digestion facility including use of the resultant biogas - installation - SR2012 No 11"                                                                | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Anaerobic digestion including storing digestate"                                        | "SR2012 No 9"  | "Apply for on-farm anaerobic digestion using farm wastes including use of biogas - installation - SR2012 No 9"                                                              | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2009 No 4"  | "Apply for combustion of biogas in engines at a sewage treatment works - SR2009 No 4"                                                                                       | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2012 No 4"  | "Apply for composting in closed systems - installation - SR2012 No 4"                                                                                                       | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2012 No 8"  | "Apply for composting in open systems - installation - SR2012 No 8"                                                                                                         | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Composting, sewage or sludge treatment, biogas"                                         | "SR2009 No 3"  | "Apply for low impact part a installation for the production of biodiesel - SR2009 No 3"                                                                                    | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Mining, oil and gas"                                                                    | "SR2015 No 1"  | "Apply for the management of extractive waste, not including a waste facility, generated from onshore oil and gas prospecting excluding hydraulic fracturing - SR2015 No 1" | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Mining, oil and gas"                                                                    | "SR2014 No 2"  | "Apply for the management of extractive waste, not including a waste facility, generated from onshore oil and gas prospecting without well stimulation - SR2014 No 2"       | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Mining, oil and gas"                                                                    | "SR2009 No 8"  | "Apply for management of inert wastes and unpolluted soil at mines and quarries - SR2009 No 8"                                                                              | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2009 No 2"  | "Apply for low impact part a installation for spent ion exchange resins - SR2009 No 2"                                                                                      | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment" | "SR2012 No 13" | "Apply for treatment of incinerator bottom ash (iba) - installation - SR2012 No 13"                                                                                         | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |
            | "Deposit for recovery"                                                                   | "SR2015 No 39" | "Apply for use of waste in a deposit for recovery operation - SR2015 No 39"                                                                                                 | "https://www.gov.uk/government/collections/environmental-permit-application-forms-for-a-standard-permit-installations-mining-waste-or-waste-operation" |

@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a user, when i select a permit which is not applicable, then I should be able to download the manual form
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select <PermitOption> option for pemit
        And I click on "Continue" button
        And I am on the <TasklistTitle> page
        And I should be able to see <link> to download manual guidance for water discharges
        Examples:
            | PermitOption       | TasklistTitle                        | link                                                                                                               |
            | "Water discharges" | "Apply for water discharges permits" | "https://www.gov.uk/government/collections/environmental-permit-application-forms-standard-permit-water-discharge" |

@desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a user, when i select a permit which is not applicable, then I should be able to download the manual form
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select <PermitOption> option for pemit
        And I click on "Continue" button
        And I am on the <TasklistTitle> page
        And I should be able to see <link> to download manual guidance for flood risk activities
        Examples:
            | PermitOption            | TasklistTitle                             | link                                                                                                               |
            | "Flood risk activities" | "Apply for flood risk activities permits" | "https://www.gov.uk/government/collections/environmental-permit-application-forms-standard-permit-water-discharge" |


    @desktop
@phone
@tablet
@uat
    @UserResearch
    Scenario Outline: As a user, when i select a permit which is not applicable, then I should be able to download the manual form
        Given the application has been launched
        And I am on the "Apply for a mobile plant standard rules waste permit" page
        And I select "Start a new application" waste permit application page
        And I click on "Continue" button
        And I am on the "Who will be the permit holder?" page
        And I select "Limited Company" option for pemit
        And I click on "Continue" button
        And I am on the "What do you want the permit for?" page
        And I select <PermitOption> option for pemit
        And I click on "Continue" button
        And I am on the <TasklistTitle> page
        And I should be able to see <link> to download manual guidance for Radioactive substances for non-nuclear sites
        Examples:
            | PermitOption            | TasklistTitle                             | link                                                                                                               |
            | "Radioactive substances for non-nuclear sites" | "Apply for radioactive substances for non-nuclear sites permits" | "https://www.gov.uk/government/collections/radioactive-substances-regulation-for-non-nuclear-sites" |        