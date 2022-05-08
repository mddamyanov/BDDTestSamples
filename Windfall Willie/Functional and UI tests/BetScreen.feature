@TestScenario @WindfallWillie @BetScreen
Feature: Windfall Willie - Bet screen
  Verification of Bet screen according to the game requirements

  Scenario: Bet screen elements
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    Then on game screen the following is happening
      | verification                                             |
      | Verify that: on screen is displayed Windfall Willie logo |
    And on game screen the following is happening
      | verification                                                               |
      | Verify that: on screen is displayed select token slider with handover mode |
    And on game screen the following is happening
      | verification                                                        |
      | Verify that: on screen is displayed Grid/s with not clickable tiles |
    And on game screen the following is happening
      | verification                                        |
      | Verify that: on screen is displayed Plays Left Area |
    And on game screen the following is happening
      | verification                                                       |
      | Verify that: on screen is displayed Play button with handover mode |
    And on game screen the following is happening
      | verification                                            |
      | Verify that: on screen is displayed empty Winnings area |
    And on game screen the following is happening
      | verification                                            |
      | Verify that: on screen is displayed not clickable TNT/s |
    And on game screen the following is happening
      | verification                                                                                                                                |
      | Verify that: on screen is displayed Settings button - offering access to buttons for Ambient and Effect Sounds, How to Play and Prize Table |
    And on game screen the following is happening
      | verification                                                                               |
      | Verify that: all the buttons on this page have handover state inside to the button borders |

  Scenario: Bet screen Resize
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                 |
      | Resize the Bet screen, Verify that there are No misplacements and visual abnormalities |
    Then on game screen the following is happening
      | verification                                                                                                                |
      | Expected result: The Bet screen remains in place and intact, No misplacements and visual abnormalities occur while resizing |

  Scenario: Initial loaded tokens
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    Then on game screen the following is happening
      | verification                                                                            |
      | Expected result: After the game is loaded, slider is in the middle with tokens value 20 |
    And on game screen the following is happening
      | verification                                  |
      | Expected result: plays left area displays 1/2 |

  Scenario: Select 10 tokens
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                      |
      | Move slider to left, Verify that tokens are changed to 10, plays left area displays 1/1, one grid is loading on game screen |
    Then on game screen the following is happening
      | verification                                                                                                      |
      | Expected result: tokens value is changed to 10, plays left area displays 1/1, , one grid is loaded on game screen |

  Scenario: Select 50 tokens
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                           |
      | Move slider to right, Verify that tokens are changed to 50, plays left area displays 1/3, three grids are loading on game screen |
    Then on game screen the following is happening
      | verification                                                                                                          |
      | Expected result: tokens value is changed to 50, plays left area displays 1/3, , three grids are loaded on game screen |

  Scenario: Play button state
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                           |
      | Move mouse pointer on Play button, Verify that the button text state is changing |
    Then on game screen the following is happening
      | verification                                               |
      | Expected result: the button text state is changed to light |

  Scenario: Play button interaction
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                   |
      | Click on Play button, Verify that the game round is started and main screen is displayed |
    Then on game screen the following is happening
      | verification                                                                 |
      | Expected result: the game round is started and main game screen is displayed |

  @notImplemented
  Scenario: Pause
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                       |
      | Perform an interruption : Verify that the game screen is instantly covered by a dark overlay |
    Then on game screen the following is happening
      | verification                                                                                                                  |
      | Expected result: The game screen is instantly covered by a dark overlay, a yellow "Resume" button is positioned at the center |
