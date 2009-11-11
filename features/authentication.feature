Feature: Authentication
    In order to allow access only to permitted people
    As a registered user
    I want to log in into the system

    Scenario: Login
        Given the following users exist
            | login | password |
            | bob   | secret |
        And I am on path "/user_sessions/new"
        When I fill in "login" with "bob"
        And I fill in "password" with "secret"
        And I press "Login"
        Then I should see "Welcome, bob!"

    Scenario: Logout
        Given the following users exist
            | login | password |
            | bob   | secret |
		And I am logged in
        And I am on path "/users"       
        When I follow "Logout"
        Then I should see "You have been logged out."

