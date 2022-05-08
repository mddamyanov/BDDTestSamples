@TestScenario @EgyptianGems @BonusGame
Feature: Egyptian Gems - Bonus Game
  Verify Bonus screens according to the game requirements

  Scenario: Super Bonus elements
    Given the Game "Bet" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                                |
      | click on "spin_button" , and Verify that Bonus screen with button and prize Items Area is showed over the main screen |
    Then on game screen the following is happening
      | verification                                                                            |
      | Verify that: on initial bonus screen is displayed Tap to Spin button with handover mode |
    And on game screen the following is happening
      | verification                                                                     |
      | Verify that: on initial bonus screen is displayed inactive area with prize Items |
    And on game screen the following is happening
      | verification                                         |
      | Verify that: on screen is displayed Super Bonus logo |
    And on game screen the following is happening
      | verification                                                                                                           |
      | Verify that: after Tap to Spin button is pressed on screen is displayed Picks Left counter and active prize Items area |
    And on game screen the following is happening
      | verification                                                                                                                    |
      | Verify that: at the end of Bonus on screen is displayed Tap to Continue button with handover mode and inactive prize Items area |

  Scenario: Beetle Bonus elements and animations
    Given the Game "Bet" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                         |
      | click on "spin_button" , and Verify that the beetle make a circle in a three by three quadrant |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                               |
      | Expected result: After clicking the spin button and the animation for the row and column ends, the beetle make a circle in a three by three quadrant and the symbols from the quadrant are going in the prize table lines. |

  Scenario: Activate Multiplied Super Bonus
    Given the Game "Bet" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                 |
      | click on "spin_button" , and Verify that there is a 2x, 3x or 10x bonus which is applied for the prize |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                        |
      | Expected result: After the Super Bonus page is opened, and the player pick on the prize items, there is a 2x, 3x or 10x bonus which is applied for the prize corresponding to the prize items from the Super Bonus. |

  Scenario: Bonus animations
    Given the Game "Bet" screen is opened
      | gameName      | operator     | currency | session               | language | game | show_debug_values |
      | Egyptian Gems | Roller Games | GBP      | SESSION_69_GBP_100.00 | EN       | opww | true              |
    When enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                                                                                                      |
      | click on "spin_button" , and Verify that the spin left area starts spining and stops on a letter and number |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                                                     |
      | Expected result: The spin left area starts spining and stops on a letter and number, after that the letter is corresponding to the row and the number is for the column. They meet somewhere in the prize table with a shine animation on the row, the column and the element at which they met. |
