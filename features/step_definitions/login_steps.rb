Dado('que eu acesso a página principal') do
    visit 'https://magento.nublue.co.uk/'
  click_link
  end
  
  Dado('que eu acesso a página de login') do
    visit 'https://magento.nublue.co.uk/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLm51Ymx1ZS5jby51ay8%2C/'
    end

  Quando('eu faço login com {string} e {string}') do |email, senha|
    @email = email
    find('#email').set email
    find('#pass').set senha
    click_button 'send'
  end

  Então("devo ser autenticado com sucesso") do
    find('span[class=logged-in]')
  end
    
  Quando('clico em Sale') do
    find_link(href:'https://magento.nublue.co.uk/sale.html').click
  end
  
  Quando('depois em Shorts') do
    find_link(href:'https://magento.nublue.co.uk/men/bottoms-men/shorts-men.html').click
  end
  
  Quando('depois clico em Cobalt CoolTech Fitness Short') do
    click_link('Cobalt CoolTech™ Fitness Short')
  end
  
  Quando('seleciono o tamanho {int}') do |int|
    find_by_id('option-label-size-144-item-178').click
    sleep 5
  end
  
  Quando('seleciono a cor Black') do
    find_by_id('option-label-color-93-item-49').click
  end
  
  Quando('depois em Add to cart') do
    find_by_id('product-addtocart-button').click
  end
  
  Então('devo visualizar o produto no carrinho') do
    find_link(href:'https://magento.nublue.co.uk/checkout/cart/').click
  end