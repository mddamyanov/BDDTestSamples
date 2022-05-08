@TestScenario @WindfallWillie @AutoPlay
Feature: Windfall Willie - Auto Play
  Verification of Auto Play according to the game requirements

  Scenario: Auto Play button state
    Given the Game "Main" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                                                                                                         |
      | Open main game via click on Play button, Move mouse pointer on Auto Play button, Verify that the button text state is changing |
    Then on game screen the following is happening
      | verification                                               |
      | Expected result: the button text state is changed to light |

  Scenario: Auto Play - one grid
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                    |
      | Select 10 tokens and click on Play button |
    And user make an action
      | action                                                                                                     |
      | Click on Auto Play button, Verify that the game round with 1 grid is played automatically as per game flow |
    Then on game screen the following is happening
      | verification                                                                         |
      | Expected result: the game round with 1 grid is played automatically as per game flow |

  Scenario: Auto Play - two grids
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                    |
      | Select 20 tokens and click on Play button |
    And user make an action
      | action                                                                                                      |
      | Click on Auto Play button, Verify that the game round with 2 grids is played automatically as per game flow |
    Then on game screen the following is happening
      | verification                                                                          |
      | Expected result: the game round with 2 grids is played automatically as per game flow |

  Scenario: Auto Play - three grids
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    When user make an action
      | action                                    |
      | Select 50 tokens and click on Play button |
    And user make an action
      | action                                                                                                      |
      | Click on Auto Play button, Verify that the game round with 3 grids is played automatically as per game flow |
    Then on game screen the following is happening
      | verification                                                                          |
      | Expected result: the game round with 3 grids is played automatically as per game flow |
