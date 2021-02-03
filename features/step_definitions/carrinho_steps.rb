Quando('pesquiso pelo produto {string} na barra de pesquisa') do |produto|
    @pesquisa.go
    @pesquisa.with(produto)
end
  
Quando('clico em adicionar no carrinho') do 
    @add.add_carrinho
end

Quando('excluo o produto do carrinho') do
    @exc.excluir
end

Quando('adiciono o mesmo produto no carrinho') do
    @car.add_carrinho_2x
end
  
Então('o produto {string} deve ser adicionado no carrinho de compras') do |produto_esperado|
    tabela = all('table tbody tr')
    prodcar = tabela.detect { |prod| prod.text.include?(produto_esperado)}
    expect(prodcar.text).to have_content produto_esperado
end

Então('devo ver a mensagem {string}') do |mensagem_esperada|
    expect(@msg.msg_esperada).to have_content mensagem_esperada
end
  
Então('devo ver a mensagem Your shopping cart contains: {string}') do |quantidade_produto|
    expect(@quant.quant_produto).to have_content quantidade_produto
end