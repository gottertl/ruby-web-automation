Given('that I am on the Home Page') do
    @home_page.open
  end
  
  When('I search for {string}') do |search_term|
    @home_page.search_for(search_term)
  end
  
  Then('I should see a list of results') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  