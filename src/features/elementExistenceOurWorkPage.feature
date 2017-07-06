Feature: Test existence of element on OutWork page
    As a developer
    I want to be able to test the existence of a element

    Background:
        Given I open the url "http://beta.greenglobal.vn/our-work/"

    Scenario Outline: check element existence on OurWork Page
        Then  I expect that element "<class>" contains the text "<text>"

            Examples:
              |           class          |                 text                   |
              |        .heading-2        |  Closing in on a decade of excellence  |
              |  .our-work-description   |  Why not take a few minutes to review some of the exceptional software the Green Global team have developed over the last 9 years?  |
