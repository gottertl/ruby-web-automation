

class SearchPage
    include Capybara::DSL

    def results_list
        find_all(".s-main-slot")
    end
end