@TestScenario @WindfallWillie @GamePause
Feature: Windfall Willie - Game Pause
  Verification of Game Pause according to the game requirements

  Scenario Outline: Game Pause on each screen
    Given the Game "<Screen>" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                  |
      | Go to "<Screen>" Screen |    
    And user make an action
      | action                                                                                                                                       |
      | Perform an interruption(move focus on other app OR browser window, tab) : Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                            |
      | Expected result: the game screen is instantly covered by a dark overlay |
    And on game screen the following is happening
      | verification                                     |
      | Expected result: the game animations are stopped |
    And on game screen the following is happening
      | verification                             |
      | Expected result: the game sound is muted |

    Examples: 
      | Screen |
      | Bet    |
      | Main   |
      | Outro  |

  Scenario: Game Pause on Info panel
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                                                                          |
      | Perform an interruption(move focus on other app OR browser window, tab), and Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                            |
      | Expected result: the game screen is instantly covered by a dark overlay |
    And on game screen the following is happening
      | verification                             |
      | Expected result: the game sound is muted |

  Scenario: Game Pause on Prize Table
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                            |
      | Click on "settings_button" and after that on "prize_table_button" |
    And user make an action
      | action                                                                                                                                      |
      | Perform an interruption(move focus on other app OR browser window, tab), Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                            |
      | Expected result: the game screen is instantly covered by a dark overlay |
    And on game screen the following is happening
      | verification                             |
      | Expected result: the game sound is muted |
