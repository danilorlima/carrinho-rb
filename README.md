
***Automation Practice***

**Descrição**
- Automação E-commerce do site www.automationpractice.com utilizando Ruby, Capybara e Cucumber.

**Configuração de ambiente**
  - Instalar o Ruby 2.5.1, link: https://rubyinstaller.org/downloads/ ;
  - Instalar a gem bundler, comando: `gem install bundler`
  - Para instalar a gems utilizadas no projeto que estão descritas no arquivo "Gemfile.rb", comando: `bundle install`
  - Fazer o download do webdriver Chrome compatível com a versão do browser, link https://chromedriver.chromium.org/downloads ;
  - Setar o webdriver como variável de ambiente do seu sistema operacional.

**Executar o projeto**
  - Arquivo cucumber.yml
      default: -p dev_toolbox -p chrome -p html -p pretty
         - -p dev_toolbox --> `Executar os steps diretamente no ambiente www.automationpractice.com`
         - -p chrome --> `Executar os cenários com o navegador chrome`
         - -p html --> `Gerar o relatório do(s) cenário(s) executado(s)`
         - -p pretty --> `Exibir progresso de execução dos testes no terminal`

     - html: `--format html --out=log/report.html`
               "--out=`log/report.html" caminho onde será salvo o relatório`

  - Arquivo dev_toolbox.yml
        Url: http://automationpractice.com/
            `Url que será utilizada para executar os teste(s) no ambiente de desenvolvimento`

**Projeto**
  - carrinho.feature
       - `Realizar alguns testes de inserção de produtos no carrinho de compras, bem como a sua exclusão`

**Desenvolvedor**
    **Nome:** Danilo Rêgo de Lima
    **Email:** danilo.demid@gmail.com
