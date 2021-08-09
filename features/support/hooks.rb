Before do
    @home_page = HomePage.new
    @search_page = SearchPage.new
end

After do
    page.save_screenshot('logs/screenshot.png')
end
