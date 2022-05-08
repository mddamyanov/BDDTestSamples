@TestScenario @WindfallWillie @MultipleClicking
Feature: Windfall Willie - Multiple clicking
  Verification of game buttons and clickable areas according to the game requirements

  Scenario: Multiple clicking
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                              |
      | Perform multiple clicking on the each game button or clickable area |
    Then on game screen the following is happening
      | verification                                                                             |
      | Verify that: Only one click should be registered and no issue should occur with the game |
