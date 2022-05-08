@TestScenario @EgyptianGems @MultipleClicking
Feature: Egyptian Gems - Multiple clicking
  Verification of game buttons and clickable areas according to the game requirements

  Scenario: Multiple clicking
    Given the Game "Intro" screen is opened
      | gameName      | operator     | currency | session               | language | game |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww |
    When user make an action
      | action                                                              |
      | Perform multiple clicking on the each game button or clickable area |
    Then on game screen the following is happening
      | verification                                                                             |
      | Verify that: Only one click should be registered and no issue should occur with the game |
