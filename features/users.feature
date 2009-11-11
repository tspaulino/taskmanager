Feature: Manage users
  In order limit access to authenticated users
  As a System Admin
  I want to be able to manage users

  Scenario: List users
    Given the following users exist
      | login | email            | password | password_confirmation |
      | bob   | bob@example.com  | secret | secret |
      | jean  | jean@example.com | not_secret | not_secret |
	And I am logged in as "bob" with password "secret"
    When I go to path "/users"
    Then I should see "bob"
    And I should see "jean@example.com"

  Scenario: Create users
    Given I have no users
	And I am logged in
    When I go to path "/users/new"
    And I fill in "login" with "bob"
    And I fill in "email" with "bob@example.com"
    And I fill in "password" with "secret"
    And I fill in "password confirmation" with "secret"
    And I press "Create"
    Then I should see "bob"
    And I should see "Edit"

   Scenario: Update user
    Given the following users exist
        | id | login | email           | password | password_confirmation |
        | 1  | bob   | bob@example.com | secret | secret |
	And I am logged in as "bob" with password "secret"
    When I go to path "/users/1/edit"
    And I fill in "login" with "robert"
    And I press "Update"
    Then I should see "robert"

   Scenario: Destroy user
    Given the following users exist
        | id | login | email           | password | password_confirmation |
        | 1  | bob   | bob@example.com | secret | secret |
	And I am logged in as "bob" with password "secret"
    And I am on path "/users"
    When I follow "Destroy"
    Then I should not see "bob"

