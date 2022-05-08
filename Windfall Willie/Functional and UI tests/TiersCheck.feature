@TestScenario @WindfallWillie @TiersCheck
Feature: Windfall Willie - Tiers Check
  Verify that the Tiers are correct according to the game requirements

  Scenario Outline: Winning tiers with bet 10
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action        |
      | Select bet 10 |
    And user make an action
      | action                                                                                                                                                         |
      | Play several game rounds with cheat for win = 10 x <bet_multiplier>, Verify that each game round has RANDOMISED symbols and token winnings are per prize table |
    Then on game screen the following is happening
      | verification                                    |
      | Verify that: Win amount = 10 x <bet_multiplier> |
    And on game screen the following is happening
      | verification                                                                                                                                                                         |
      | Verify that: tiers are as per the winning tiers table, animation, sup prizes won and the total prizes are correct and as per the table, play grid is correct with RANDOMISED symbols |

    Examples: 
      | bet_multiplier |
      |              1 |
      |              2 |
      |              3 |
      |              5 |
      |              7 |
      |             10 |
      |             15 |
      |             50 |
      |            100 |
      |            250 |
      |            500 |

  Scenario Outline: Winning tiers with bet 20
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action        |
      | Select bet 20 |
    And user make an action
      | action                                                                                                                                                         |
      | Play several game rounds with cheat for win = 20 x <bet_multiplier>, Verify that each game round has RANDOMISED symbols and token winnings are per prize table |
    Then on game screen the following is happening
      | verification                                    |
      | Verify that: Win amount = 20 x <bet_multiplier> |
    And on game screen the following is happening
      | verification                                                                                                                                                                         |
      | Verify that: tiers are as per the winning tiers table, animation, sup prizes won and the total prizes are correct and as per the table, play grid is correct with RANDOMISED symbols |

    Examples: 
      | bet_multiplier |
      |              1 |
      |              2 |
      |              3 |
      |              5 |
      |              7 |
      |             10 |
      |             15 |
      |             50 |
      |            100 |
      |            250 |
      |            500 |

  Scenario Outline: Winning tiers with bet 50
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action        |
      | Select bet 50 |
    And user make an action
      | action                                                                                                                                                         |
      | Play several game rounds with cheat for win = 50 x <bet_multiplier>, Verify that each game round has RANDOMISED symbols and token winnings are per prize table |
    Then on game screen the following is happening
      | verification                                    |
      | Verify that: Win amount = 50 x <bet_multiplier> |
    And on game screen the following is happening
      | verification                                                                                                                                                                         |
      | Verify that: tiers are as per the winning tiers table, animation, sup prizes won and the total prizes are correct and as per the table, play grid is correct with RANDOMISED symbols |

    Examples: 
      | bet_multiplier |
      |              1 |
      |              2 |
      |              3 |
      |              5 |
      |              7 |
      |             10 |
      |             15 |
      |             50 |
      |            100 |
      |            250 |
      |            500 |

  Scenario: Losing tiers
    Given the Game "Bet" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                        |
      | Play several game rounds with Losing scenario, Verify for tokens accumulation |
    Then on game screen the following is happening
      | verification                                              |
      | Verify that: play grid is correct with RANDOMIZED symbols |
    And on game screen the following is happening
      | verification                                                       |
      | Verify that: at the end of round "0 tokens" is displayed on screen |
