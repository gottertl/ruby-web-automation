Given('that I am on the Home Page') do
    @home_page.open
  end
  
  When('I search for {string}') do |search_term|
    @home_page.search_for(search_term)
  end
  
  Then('I should see a list of results') do
    expect(@search_page.results_list).not_to be_nil
  end
  