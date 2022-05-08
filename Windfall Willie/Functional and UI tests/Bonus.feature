@TestScenario @WindfallWillie @BonusGame
Feature: Windfall Willie - Bonus Game
  Verify Bonus screens according to the game requirements

  Scenario: Bonus elements
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                 |
      | cheat for Bonus win and start the game |
    Then on game screen the following is happening
      | verification                                                                                  |
      | Verify that: on Bonus screen is displayed Winnings area with earned tokens from the main game |
    And on game screen the following is happening
      | verification                                                                                   |
      | Verify that: on Bonus screen is displayed Chances area with number of remained Bonus Gameplays |
    And on game screen the following is happening
      | verification                                                                                                |
      | Verify that: on the screen is displayed a large boulder, also pickaxe which player use to crack the boulder |

  Scenario: Bonus animations
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                       |
      | cheat for several Bonus symbols win, start the game, Verify Bonus animations |
    Then on game screen the following is happening
      | verification                                   |
      | Verify that: Bonus start with splash animation |
    And on game screen the following is happening
      | verification                               |
      | Verify that: boulder has "crack" animation |
    And on game screen the following is happening
      | verification                                                           |
      | Verify that: pickaxe has "move and hit" animation only in boulder area |
    And on game screen the following is happening
      | verification                                     |
      | Verify that: every Bonus win has shine animation |

  Scenario: Bonus rounds behavior
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                                             |
      | cheat for several Bonus symbols win, start the game, go through each Bonus round, Verify for behavior of tokens accumulation and rounds transition |
    Then on game screen the following is happening
      | verification                                                                                                                                                       |
      | Expected result: Every Bonus round starts with unbroken boulder, Slide animation run between remained Bonus rounds, Bonus winnigs are accumulated in Winnings area |
