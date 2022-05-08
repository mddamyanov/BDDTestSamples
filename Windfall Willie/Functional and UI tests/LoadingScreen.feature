@TestScenario @WindfallWillie @LoadingScreen
Feature: Windfall Willie - Intro Screen
  Verification of Loading screen according to the game requirements

  Scenario: Loading screen elements
    Given the Game "" screen is opened
      | url                                                                      |
      | http://rollergaming:r0llergaming@demo.mdev.mobilewaves.com/rollergaming/ |
    Then on game screen the following is happening
      | verification                                                                   |
      | Verify that: loading screen is displayed with Game logo and sliding mine wagon |

