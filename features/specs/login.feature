Feature: Login
    As a user, I want to login so that I can access my personal information

    @login
    Scenario: Attempt to login with invalid email
        Given that I am on the Login Page
        When I try to login with a non registered email account "nonexistentemail@mail.com"
        Then I should see an error message "We cannot find an account with that email address"