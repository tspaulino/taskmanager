Feature: Manage users
  In order limit access to authenticated users
  As a System Admin
  I want to be able to manage users
  
  Scenario: List users
    Given the following users exist
      | login | email            |
      | bob   | bob@example.com  |
      | jean  | jean@example.com |
    When I go to path "/users"
    Then I should see "bob"
    And I should see "jean@example.com"

  Scenario: Create users
    Given I have no users
    When I go to path "/users/new"
    And I fill in "login" with "bob"
    And I fill in "email" with "bob@example.com"
    And I fill in "password" with "secret"
    And I fill in "password confirmation" with "secret"
    And I press "Create"
    Then I should see "bob"
    And I should see "Edit"