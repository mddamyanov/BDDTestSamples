@TestScenario @CrazyFruitsDoubler @InfoPages
Feature: Crazy Fruits Doubler - Info Pages
  Verification of Info pages according to the game requirements

  Scenario: Info screen elements
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    Then on game screen the following is happening
      | verification                                                           |
      | Verify that: the info overlaid panel will immediately load on page 1/3 |
    And on game screen the following is happening
      | verification                                                                   |
      | Verify that: there are three pages with each page detailing a game instruction |
    And on game screen the following is happening
      | verification                                                |
      | Verify that: there are not any currency signs on info pages |
    And on game screen the following is happening
      | verification                                                                            |
      | Verify that: left and right arrow buttons are displayed at the bottom of the info pages |
    And on game screen the following is happening
      | verification                                                                      |
      | Verify that: before AND/OR next page number is displayed near to the arrow button |
    And on game screen the following is happening
      | verification                                                                 |
      | Verify that: a close button is positioned at the top-right of the info pages |
    And on game screen the following is happening
      | verification                                                                                    |
      | Verify that: on screen is displayed Settings button - offering access to Sound and Info buttons |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: How to Play instructions
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                 |
      | Open the info page 1/5, Use the Right arrow pagination |
    Then on game screen the following is happening
      | verification                                                 |
      | Verify that on Page One is displayed: How to bet instruction |
    And on game screen the following is happening
      | verification                                                                                             |
      | Verify that on Page Two is displayed: Click the six prize items to reveal between six and twelve symbols |
    And on game screen the following is happening
      | verification                                                                                                                        |
      | Verify that on Page Three is displayed: Reveal three identical symbols in a game to win the corresponding amount in the PRIZE TABLE |
    And on game screen the following is happening
      | verification                                                                                                                                                     |
      | Verify that on Page Four is displayed: Reveal the three defined DOUBLER BONUS symbols to double the values of all prizes in the PRIZE TABLE except the top prize |
    And on game screen the following is happening
      | verification                                                                                                                                                             |
      | Verify that on Page Five is displayed: At the end of the game you can click OPEN EYE ICON to view the game outcome. After that click CLOSE EYE ICON to close this screen |

  Scenario: Right arrow interaction
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                            |
      | Open the info page 1/5, Use the Right arrow pagination four times |
    Then on game screen the following is happening
      | verification                                                                            |
      | Expected result: the panel will open page 2/5, 3/5, 4/5, 5/5, the right arrow will hide |

  Scenario: Left arrow interaction
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                           |
      | Open the info page 5/5, Use the Left arrow pagination four times |
    Then on game screen the following is happening
      | verification                                                                           |
      | Expected result: the panel will open page 4/5, 3/5, 2/5, 1/5, the left arrow will hide |

  Scenario: Last page memorizing
    Given the Game "Bet" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                |
      | Open the info page 2/5 and after that close game info |
    And enter cheat "MATH:{'tier_id': 2,'scenario_id': 1}" and preserve "no"
    And click on "bet_button"
    And user make an action
      | action                |
      | Press the info button |
    Then on game screen the following is happening
      | verification                                                              |
      | Expected result: the info page 2/5 is immediately presented to the player |

  Scenario: Elements behind the info page
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                            |
      | Press inside the info page, and Verify that nothing should happen |
    Then on game screen the following is happening
      | verification                                                                                   |
      | Expected result: nothing is happen, the game remains unresponsive until the info dialog closed |

  Scenario: Info close button
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                                         |
      | Open the info page and after that, move mouse cursor on close info page button |
    Then on game screen the following is happening
      | verification                                                               |
      | Expected result: There is hover effect on the close button and hand cursor |

  Scenario: Closing game info
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                             |
      | Open the info page and after that, click on close info page button |
    Then on game screen the following is happening
      | verification                                                                                                                                                                |
      | Expected result: The info page immediately disappears after close button is clicked, the player is able to resume the game, all restrictions on the game buttons are lifted |

  Scenario: Info page Resize
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                            |
      | Resize the game window, and Verify that the whole game along with the info page rescales properly |
    Then on game screen the following is happening
      | verification                                                                                                                                                                                                                                                      |
      | Expected result: the whole game along with the info page rescales properly, all visual elements remain consistent and intact, the text in the info pages remains in place during resizing, no words must be carried on the rows below, no spilling-out must occur |

  Scenario: Non interactive text
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                                 |
      | Attempt to select some of the text or tap and hold, and Verify that this action should not be possible |
    Then on game screen the following is happening
      | verification                                                                                |
      | Expected result: this action should not be possible, none of the text should be interactive |

  @notImplemented
  Scenario: Click outside the Info page
    Given the Game "Main" screen is opened
      | gameName             | operator     | currency | session               | language | game  | show_debug_values |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opcfd | true              |
    When user make an action
      | action                                                                       |
      | Open the info page and after that, Click/tap outside of the info page border |
    Then on game screen the following is happening
      | verification                                                                                                 |
      | Expected result: the info page immediately disappears after click/tap, the player is able to resume the game |
      
  @notImplemented
  Scenario: Resume after interruption
    Given the Game "Intro" screen is opened
      | gameName             | operator     | currency | session               | language | game |
      | Crazy Fruits Doubler | Roller Games | CHF      | SESSION_47_CHF_100.00 | EN       | opww |
    When user make an action
      | action                                                     |
      | Click on "settings_button" and after that on "info_button" |
    And user make an action
      | action                                                                                            |
      | Make an interruption, and Verify that while resume button is present the info page is not visible |
    And user make an action
      | action                                                                                                       |
      | Press the resume button, and Verify that when resume button is pressed then the info page is presented again |
    Then on game screen the following is happening
      | verification                                                                         |
      | Expected result: when resume button is pressed then the info page is presented again |
