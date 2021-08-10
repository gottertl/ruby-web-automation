Given('that I am on the Login Page') do
    @home_page.open
    @home_page.go_to_login
  end
  
  When('I try to login with a non registered email account {string}') do |email|
    @login_page.login_with(email)
  end
  
  Then('I should see an error message {string}') do |error_message|
    expect(page).to have_content error_message
  end