Dado("que eu acesso o site de venda dos livro") do
    visit 'http://demo.automationtesting.in/'
end
Quando("inserir meu email") do
  @page = Compras.new
  @page.tela_inicial
end
Quando("preencho os formularios") do
  @page.tela_formulario
end

Entao("clico no botão submit") do
  find("#submitbtn").click
  sleep(1)
end

Entao("clico no Practice site") do
  find("#header > nav > div > div.navbar-collapse.collapse.navbar-right > ul > li:nth-child(10) > a").click
  sleep(5)
end

Entao("seleciono um produto para o carrinho de compras") do
  @page.sele_carrinho
end

Entao("clico no carrinho para concluir o pedido") do
  @page.carrinho_compras
end

Entao("preencho o detalhes de cobrança") do
  @page.detalhes
end

Entao("finalizo minha compra com sucesso") do
  find("#place_order").click
  sleep (2)
end
