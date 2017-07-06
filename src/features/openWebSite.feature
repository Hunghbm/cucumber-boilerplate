Feature: Test URL
    As a developer
    I want to test URL Website have the correct

    Scenario: open URL
        Given I open the site "/"
        Then  I expect that the url is "http://beta.greenglobal.vn/"
        And   I expect that the url is not "http://google.com"
        And   I expect that the title is "Green Global"

    Scenario: Check title website
        Given I open the site "/"
        Then I expect that the title is "Green Global"
        And I expect that the title is not "Google"
