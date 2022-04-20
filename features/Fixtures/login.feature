#language:pt

@login
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com o meu email e senha cadastrados.

    Cenário: Realizar login com sucesso
        Dado que eu acesso a página de login
        Quando eu faço login com 'roni_cost@example.com' e 'roni_cost3@example.com'
        Então devo ser autenticado com sucesso
