class Login_page < SitePrism::Page
    
    element :btn_login,             '.login'
    element :input_email,           '#email'
    element :input_passwd,          '#passwd'
    
    def acesso_conta(email, senha)
        btn_login.click
        input_email.set(email)
        input_passwd.set(senha)
        click_button 'SubmitLogin'    
    end

end