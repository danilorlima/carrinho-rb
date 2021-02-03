#language: pt

Funcionalidade: Carrinho de compras
    Para que eu possa realizar uma compra
    Sendo um usuário do sistema
    Devo adicionar um produto no carrinho de compras

    @produto_inexistente
    Cenario: Tentar adicionar produto inexistente no carrinho de compras
        Quando pesquiso pelo produto 'Geladeira' na barra de pesquisa
        Então devo ver a mensagem 'No results were found for your search "Geladeira"'
    
    @add_car
    Cenario: Adicionar produto no carrinho de compras através da barra de pesquisa
        Quando pesquiso pelo produto 'Faded Short Sleeve T-shirts' na barra de pesquisa
        E clico em adicionar no carrinho
        Então o produto 'Faded Short Sleeve T-shirts' deve ser adicionado no carrinho de compras

    @add_car_2x
    Cenario: Adicionar dois produtos no carrinho de compras
        Quando pesquiso pelo produto 'Faded Short Sleeve T-shirts' na barra de pesquisa
        E clico em adicionar no carrinho
        E adiciono o mesmo produto no carrinho
        Então devo ver a mensagem Your shopping cart contains: '2 Products'

    @excluir_produto
    Cenario: Excluir produto do carrinho de compras
        Quando pesquiso pelo produto 'Faded Short Sleeve T-shirts' na barra de pesquisa
        E clico em adicionar no carrinho
        Mas excluo o produto do carrinho
        Então devo ver a mensagem 'Your shopping cart is empty.'

