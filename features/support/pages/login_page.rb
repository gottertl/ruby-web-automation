

class LoginPage
    include Capybara::DSL

    def login_with(email)
        find('#ap_email').set(email)
        click_button('continue')
    end

end