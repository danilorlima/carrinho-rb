class CarrinhoPage
    include Capybara::DSL
    def go
        visit "/"
    end

    def with(prod)
        find("#search_query_top").set prod
        click_button 'submit_search'
    end

    def add_carrinho
        cart = find('img[alt="Faded Short Sleeve T-shirts"]')
        cart.hover
        click_link(class: 'ajax_add_to_cart_button')
        find('span', text: 'Proceed to checkout').click
    end

    def add_carrinho_2x
        click_link(class: 'cart_quantity_up')
        sleep 1
    end

    def excluir
        click_link(class: 'cart_quantity_delete')
    end

    def msg_esperada
        find('.center_column .alert-warning').text
    end

    def quant_produto
        find('.page-heading .heading-counter span').text
    end

end