Feature: Can it process files?
  The program must be able to properly sort all possible files

  Scenario: Empty input file
    Given Any .csv file no data
    When I construct and run the sorting function
    Then The output .csv file should be empty

  Scenario: Basic input file
    Given An example .csv file with one line with proper formatting
    When I construct and run the sorting function
    Then The Constructor should return the sorted output csv file

  Scenario: Input file with many lines
    Given An example .csv file with a large number of lines with proper formatting
    When I construct and run the sorting function
    Then The Constructor should return the sorted output csv file for the first line

  Scenario: Input file with large values
    Given An example .csv file with values of length exceeding that of a signed long
    When I construct and run the sorting function
    Then The Constructor should return the sorted output csv file for the first line

  Scenario: Input file with many values in first line
    Given An example .csv file with a number of values exceeding that of a signed long
    When I construct and run the sorting function
    Then The Constructor should return the sorted output csv file for the first line

  Scenario: Input file with many values over all lines
    Given An example .csv file with a number of values over all lines exceeding that of an unsigned long
    When I construct and run the sorting function
    Then The Constructor should return the sorted output csv file for the first line

  Scenario: input and output are same target
    Given An example .csv file with proper formatting, that is also the target for the output .csv file
    When I construct and run the sorting function
    Then The Constructor should properly replace the input .csv file with the output .csv file