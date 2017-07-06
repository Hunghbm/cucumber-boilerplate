Feature: Test how clicks are handled on a certain element Menu Bar
    As a developer
    I want to be able to test how clicks are handled by certain elements Menu Bar

    Background:
        Given I open the site "/"

    Scenario Outline: Single click on a link should navigate to <page> page
        When  I click on the link "<page>"
        Then  I expect the url to contain "<url>"
        And   I expect that the title is "<title>"
        And   I expect that element ".logo" does exist
        And   I expect that element ".nav-link" does exist
        And   I expect that element ".btn-work-with-us" does exist

            Examples:
                  |     page    |            url                |   title   |
                  |     HOME    |  http://beta.greenglobal.vn/  |  Green Global  |
                  |   OUR WORK  |  http://beta.greenglobal.vn/our-work/  |  Our Work  |
                  |   SERVICES  |  http://beta.greenglobal.vn/services/startup-consulting/  |   Startup Consulting   |
                  |    ABOUT    |  http://beta.greenglobal.vn/about/who-we-are/  |  Who We Are  |
                  |     NEWS    |  http://beta.greenglobal.vn/news/  |  CEO of Green Global Awarded Outstanding Young Startup Entrepreneurs 2015  |


    Scenario: Single click on a link sub Menu Bar
        When  I move to element "li.menu-item-object-page:nth-child(3)"
        When  I click on the link "STARTUP CONSULTING"
        Then  I expect the url to contain "http://beta.greenglobal.vn/services/startup-consulting/"
        And   I expect that the title is "Startup Consulting"
        And   I expect that element ".logo" does exist
        And   I expect that element ".nav-link" does exist
        And   I expect that element ".btn-work-with-us" does exist


    Scenario Outline: Single click on the element Menu Bar
        When  I click on the element "<class>"
        Then  I expect the url to contain "<url>"
        And   I expect that element ".logo" does exist
        And   I expect that element ".nav-link" does exist
        And   I expect that element ".btn-work-with-us" does exist

            Examples:
                  |        class         |               url                    |
                  |     .logo-image      |  http://beta.greenglobal.vn/         |
                  |   .btn-work-with-us  |  http://beta.greenglobal.vn/contact/ |
