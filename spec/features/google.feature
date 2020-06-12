Feature: Google Search
  Searching for term returns results for term
  Searching by Feeling Lucky returns random result

  Scenario Outline: Searching a term
    Given the <driver> has been setup
    Given The user visits google
    When The user enters search term '<term>'
    And The user clicks the '<button>' button
    Then The user should be directed to the results page for '<term>'
    Examples:
      |    driver    | term | button |
      | chrome_local | cat  | Google Search |
      | firefox_local | floofball  | Google Search |
