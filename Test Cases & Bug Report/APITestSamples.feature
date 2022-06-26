Feature: API Tests

  Scenario: local check
    Given Get the API Url
    When Make a Rest Call to "/testSlots.php/" with "GET" method
    Then Verify if the status code is "200"
    And Verify if the response contains the following info
      | data[0].actualInput | 0 |
      | data[0].isMultipliedBy4or6 | false |
      | data[1].actualInput | 1 |
      | data[1].isMultipliedBy4or6 | false |
      | data[2].actualInput | 2 |
      | data[2].isMultipliedBy4or6 | false |
      | data[3].actualInput | 4 |
      | data[3].isMultipliedBy4or6 | true |
      | data[3].isMultipliedBy4 | true |
      | data[4].actualInput | 6 |
      | data[4].isMultipliedBy4or6 | true |
      | data[4].isMultipliedBy6 | true |
      | data[5].actualInput | 12 |
      | data[5].isMultipliedBy4or6 | true |
      | data[5].isMultipliedBy6 | true |
      | data[5].isMultipliedBy4 | true |
      | data[5].isMultipliedBy4and6 | true |
      | data[6].actualInput | -12 |
      | data[6].isMultipliedBy4or6 | true |
      | data[6].isMultipliedBy6 | true |
      | data[6].isMultipliedBy4 | true |
      | data[6].isMultipliedBy4and6 | true |
      | data[7].actualInput | -6 |
      | data[7].isMultipliedBy4or6 | true |
      | data[7].isMultipliedBy6 | true |
      | data[8].actualInput | -4 |
      | data[8].isMultipliedBy4or6 | true |
      | data[8].isMultipliedBy4 | true |
      | data[9].actualInput | 12121 |
      | data[9].isPalindrome | true |
      | data[10].actualInput | -1221 |
      | data[10].isPalindrome | false |
      | data[11].actualInput | -4.1 |
      | data[11].isMultipliedBy4 | false |
      | data[12].actualInput | -6.6 |
      | data[12].isMultipliedBy6 | false |
      | data[13].actualInput | -12.3 |
      | data[13].isMultipliedBy4or6 | false |
      | data[14].actualInput | -12.6 |
      | data[14].isMultipliedBy4or6 | false |
      | data[15].actualInput | 12.3 |
      | data[15].isMultipliedBy4or6 | false |
      | data[16].actualInput | 12.6 |
      | data[16].isMultipliedBy4or6 | false |
      | data[17].id | 18 |
      | data[17].isMultipliedBy4or6 | false |
      | data[17].isPalindrome | false |
      | data[18].actualInput | civic |
      | data[18].isPalindrome | true |
      | data[19].actualInput | Civic |
      | data[19].isPalindrome | true |
      | data[20].actualInput | !,+,;%&((&%;,+,! |
      | data[20].isPalindrome | true |







##fasf test







