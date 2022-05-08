@TestScenario @WindfallWillie @GamePlayTime
Feature: Windfall Willie - Game Play Time
  Verification of Game Play Time according to the operator requirements

  Scenario: Мinimum game play time
    Given Measure timer is reseted
    And the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                   |
      | Bet with cheat for Winning scenario and play the game to the end.After that click OK on the popup window |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Non winning scenario
    Given Measure timer is reseted
    And the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                  |
      | Bet with cheat for Losing scenario and play the game to the end.After that click OK on the popup window |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Winning lowest price scenario
    Given Measure timer is reseted
    And the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                       |
      | Bet with cheat for min Winning scenario and play the game to the end.After that click OK on the popup window |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well

  Scenario: Auto play mode
    Given Measure timer is reseted
    And the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                              |
      | Choose ANY tier from cheat menu to check gameplay on no winnig game |
    And user make an action
      | action                          |
      | Play the game in Auto Play mode |
    Then the game play is not short than the minimum game play time 30 s, the time includes loading of the game as well
