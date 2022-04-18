class Carrinho

    include Capybara::DSL

    def AcessarPagina
        login = Login.new
        login.Acessar
        login.PreencherLogin('roni_cost@example.com', 'roni_cost3@example.com')
        login.Entrar
        find_link(href:'https://magento.nublue.co.uk/sale.html').click
    end

    def SelecionarShort
        find_link(href:'https://magento.nublue.co.uk/men/bottoms-men/shorts-men.html').click
    end

    def ProdutoCobaltCoolTechFitnessShort
        click_link('Cobalt CoolTech™ Fitness Short')
    end

    def SelecionarTamanho
        find_by_id('option-label-size-144-item-178').click
        sleep 5
    end

    def SelecionarCor
        find_by_id('option-label-color-93-item-49').click
    end

    def AdicionarAoCarrinho
        find_by_id('product-addtocart-button').click
    end

    def VisualizarMensagem
        sleep 5
        assert_text('You added')
    end
end

