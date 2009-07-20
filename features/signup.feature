Feature: Signing Up for an SSO Account
  In order to get users involved
  As a new user
    Scenario: signing up as a redirect from a consumer
      Given I am not logged in on the sso provider
      And a valid consumer exists
      When I request authentication returning to the consumer app
      Then I should be prompted to login
      When I click signup
      Then I should see the signup form
      When I signup with valid info
      Then I should receive a registration url via email
      When I hit the registration url and provide a password
      Then I should be prompted to login

    Scenario: signing up
      Given I am not logged in on the sso provider
      And a valid consumer exists
      When I request the login page
      Then I should be prompted to login
      When I click signup
      Then I should see the signup form
      When I signup with valid info
      Then I should receive a registration url via email
      When I hit the registration url and provide a password
