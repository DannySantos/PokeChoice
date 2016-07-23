Feature: Pokemon

  Scenario: A visitor views all Pokemon
    Given there are some Pokemon in the database
      And they are on the home page
    Then they should see all Pokemon in the database