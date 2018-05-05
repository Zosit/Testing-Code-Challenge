Feature: Can it read files?
  The program must be able to accept all legal files, and decline all illegal files

  Scenario: Basic input csv
    Given Any .csv file with proper formatting
    When I construct the sorting function
    Then nothing should happen

  Scenario: invalid input file
    Given Files that are not csv files
    When I construct the sorting function
    Then The Constructor should throw an exception "Expected .csv file"