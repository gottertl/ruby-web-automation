Feature: Search
    As a user, I want to search for items so that I can purchase them

    Scenario: Search for product name
        Given that I am on the Home Page
        When I search for "television"
        Then I should see a list of results