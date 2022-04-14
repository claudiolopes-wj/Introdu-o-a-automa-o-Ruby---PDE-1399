#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com o meu email e senha cadastrados.

    Contexto: Acessar a página

        Dado que eu acesso a página de login

    Cenário: Usuário deve ser autorizado

        Quando eu faço login com 'roni_cost@example.com' e 'roni_cost3@example.com'
        Então devo ser autenticado com sucesso

    Cenário: Adicionar um produto ao carrinho
        Quando eu faço login com 'roni_cost@example.com' e 'roni_cost3@example.com' 
        E clico em Sale
        E depois em Shorts
        E depois clico em Cobalt CoolTech Fitness Short
        E seleciono o tamanho 36
        E seleciono a cor Black
        E depois em Add to cart
        Então devo visualizar o produto no carrinho