Before do
    @home_page = HomePage.new
    @search_page = SearchPage.new
    @login_page = LoginPage.new
end

After do |scenario|
    page.save_screenshot("logs/#{scenario.name}.png")
end
