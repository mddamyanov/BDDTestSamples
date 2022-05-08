@TestScenario @CrazyFruitsDoubler @TiersCheck
Feature: Crazy Fruits Doubler - Tiers Check
  Verify that the Tiers are correct according to the game requirements

  Scenario Outline: Winning tiers
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier <Tier> and scenario <Scenario>
    Then on game screen the following is happening
      | verification                            |
      | Verify that: Win amount is <win_amount> |
    And on game screen the following is happening
      | verification                                                                                                                                                                         |
      | Verify that: tiers are as per the winning tiers table, animation, sup prizes won and the total prizes are correct and as per the table, play grid is correct with RANDOMISED symbols |

    Examples: 
      | Tier | Scenario | win_amount |
      |    1 |        1 |      10000 |

  Scenario Outline: Losing tiers
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When bet with cheat for tier <Tier> and scenario <Scenario>
    Then on game screen the following is happening
      | verification                                                                                                                                                                                            |
      | Verify that: game animation is not winning and outro screen shows no winning game, play grid is correct with RANDOMIZED symbols, verify all negative/no-winning tier boundaries: max tier +1, null , -1 |

    Examples: 
      | Tier | Scenario |
      |    0 |        1 |
