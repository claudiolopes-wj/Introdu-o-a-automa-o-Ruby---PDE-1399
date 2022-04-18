login = Login.new

  Dado('que eu acesso a página de login') do
    login.Acessar
  end
  
  Quando('eu faço login com {string} e {string}') do |email, senha|
    login.PreencherLogin(email, senha)
  end

  Então("devo ser autenticado com sucesso") do
    login.ValidarAcesso
  end
    
  