

class HomePage
    include Capybara::DSL

    def open
        visit "/"
    end

    def search_for(search_term)
        find("#twotabsearchtextbox").set(search_term)
        find("#twotabsearchtextbox").native.send_keys(:return)
        #click_button("#nav-search-submit-button")
    end

    def go_to_login
        find("a[data-nav-role='signin']").click
    end

end