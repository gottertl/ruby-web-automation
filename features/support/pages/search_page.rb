

class SearchPage
    include Capybara::DSL

    def results_list
        find(".s-main-slot")
    end
end