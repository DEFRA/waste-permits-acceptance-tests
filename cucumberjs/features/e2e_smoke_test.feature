Feature: End to end Smoke test

  @Ben
  Scenario Outline: As a user I should be able to apply for a waste permit for a <PermitHolder>
    Given the application has been launched
    And I start a new application
    And I select <PermitHolder> as the permit holder
    And I select <PermitCategory> as the permit category
    And I select <Permit> as the permit number
    And I check costs
    And I confirm I meet the rules
    And I <SuitableVehicleStorage> suitable vehicle storage
    And I save my application
    And I enter my contact details
    And I enter my permit holder details for a <PermitHolder>
    And I <WasteRecoveryPlan> the waste recovery plan
    And I <FirePreventionPlan> the fire plan
    Examples:
      | PermitHolder                    | PermitCategory                                                 | Permit         | SuitableVehicleStorage | WasteRecoveryPlan | FirePreventionPlan |
      | "Limited company"               | "Car and vehicle dismantling"                                  | "SR2015 No 13" | "confirm"              | "skip"            | "upload"   |
      | "Sole trader"                   | "Metal recycling, scrap metal and WEEE - not cars or vehicles" | "SR2015 No 14" | "skip"                 | "skip"            | "upload"   |
      | "Limited liability partnership" | "Deposit for recovery"                                         | "SR2015 No 39" | "skip"                 | "upload"          | "skip"   |
      | "Individual"                    | "Composting, sewage or sludge treatment, biogas"               | "SR2010 No 14" | "skip"                 | "skip"            | "skip"   |