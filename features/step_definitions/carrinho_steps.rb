carrinho = Carrinho.new

Quando('clico em Sale') do
  carrinho.AcessarPagina
  end
  
  Quando('depois em Shorts') do
    carrinho.SelecionarShort
  end
  
  Quando('depois clico em Cobalt CoolTech Fitness Short') do
    carrinho.ProdutoCobaltCoolTechFitnessShort
  end
  
  Dado('seleciono o tamanho de número trinta e seis') do
    carrinho.SelecionarTamanho
  end
  
  Quando('seleciono a cor Black') do
    carrinho.SelecionarCor
  end
  
  Quando('depois em Add to cart') do
    carrinho.AdicionarAoCarrinho
  end
  
  Então('devo visualizar o produto no carrinho') do
    carrinho.VisualizarMensagem
  end