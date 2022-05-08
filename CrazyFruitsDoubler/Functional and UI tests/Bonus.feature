@TestScenario @CrazyFruitsDoubler @BonusGame
Feature: Crazy Fruits Doubler - Bonus Game
  Verify Bonus Game according Game Brief

  Scenario: Bonus symbols
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                                      |
      | Pick on the prize items, and Verify that the bonus symbols change teir states from NOT MATCHED to MATCHED, during revealing |
    Then on game screen the following is happening
      | verification                                                                                                                           |
      | Expected result: Bonus symbols change states from NOT MATCHED to MATCHED, there are shine animations behind the revealed bonus symbols |

  Scenario: Activate Doubler bonus
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                      |
      | Pick to reveal all the prize items, and Verify that the prize table values are doubled except the top prize |
    Then on game screen the following is happening
      | verification                                                             |
      | Expected result: The prize table values are doubled except the top prize |

  Scenario: Bonus animations
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                     |
      | Pick to reveal all the prize items, and Verify for shine animations on the winning symbols |
    Then on game screen the following is happening
      | verification                                                       |
      | Expected result: there are shine animations on the winning symbols |

  @notImplemented
  Scenario: Outro screen - Animations after Bonus end
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                                                              |
      | Expected result: The game will perform several animations:Firstly, highlight/animate all three symbols and the Crazy Fruits Doubler logo associated with the symbols, Followed that with a full animated upgrade each prize value starting at the lowest value working up to the tier below the top prize |
