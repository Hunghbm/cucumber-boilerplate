Feature: Test existence of element on Home page
    As a developer
    I want to be able to test the existence of a element

    Background:
        Given I open the site "/"

    Scenario: Existing element button View More check 
        Then  I expect that element ".footer-text" does exist

    Scenario Outline: check
        Then  I expect that element "<class>" contains the text "<text>"
        Examples:
          |          class          |           text           |
          |        .mail-link       |  contact@greenglobal.vn  |
          |       .main-heading     |       Our Awards         |
          |  .description-heading   |  Green Global has been repeatedly recognized and awarded for our achievements.  |
