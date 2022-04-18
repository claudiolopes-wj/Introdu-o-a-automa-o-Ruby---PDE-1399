class Login

    include Capybara::DSL

    def Acessar
        visit '/'
        click_link('Sign In')
    end

    def PreencherLogin(email, senha)
        find_by_id('email').set email
        find_by_id('pass').set senha
    end

    def Entrar
        find('button[name="send"]').click
        sleep(6)
    end
    
    def ValidarAcesso
        page.has_css?('.logged-in')
    end

end