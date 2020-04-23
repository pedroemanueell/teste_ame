# Sobre
    A pasta contém dois projetos. 
    O primeira pasta(teste_ame-api) é a automação de uma api pública onde o principal foco é o cadastro, validação e 
    exclusão de um usuário.
    O segunda pasta(teste_ame-web) é uma automaçãom web, onde a principal funcionalidade é cadastrar um usuário e 
    depois testar as funcionalidades do Login com o usuário cadastrado, por exemplo, login feito com sucesso, 
    senha  inválida, email inválido entre outras funcionalidade.

# Rodando o projeto
    Para rodar o projeto, o primeiro passo é a instalação do bundler, basta rodar o comando através do cmd:
    gem bundle install
    
    Após a instalação, será criado um arquivo chamado GemFile. Dentro do Gemfile será necessario colcar as bibliotecas utilizadas no projeto que são:
    
    source 'https://rubygems.org'

    gem 'capybara'
    gem 'selenium-webdriver'
    gem 'rspec'
    gem 'cucumber'
    gem 'site_prism'
    gem 'pry'
    
    Após inserir as gems utilizadas no projeto, basta inserir o comando:
    bundle install
    
    Em seguida deverá rodar o comando:
    cucumber -t @tag_do_cenario
    
    ex: cucumber -t @login
# Pasta feature
    Contém os cenarios que serão executados na automação, escritos em BDD(Behavior Driven Development). 
    Ex: Cadastro.feature
    
    Dentro da pasta FEATURE inclui outras duas pastas:
# Pasta step_Definitions
    Onde são definidos os steps da automação. 
    Ex: cadastro.rb 
    Dentro do arquivos é chamado as classses e os métodos criados e também realizamos a validação do cenário; 
# Pasta support
    Contém o arquivo env.rb onde são definadas algumas configurações da automação;
    Ex: O browser(navegador) que irá rodar a automação;
    E também o arquivo hooks.rb onde são definidas outras configurações.
    Ex: Screenshot do cenário.
    
    Além desses dois arquivos, inclui a: 
# Pasta page
    Que contém os arquivos Pages_Objects, onde são definidos as Classes:
    Ex: class Cadastro_page < SitePrism::Page
    Elementos mapeados:
    Ex: element :nome_do_elemento, 'ID_do_elemento_mapeado'
    E metódos e suas acões:
    Ex: def nome_metodo
            elemento_mapeado.click
        end

# Pasta log
    Contém as evidências da execução da automação.
    Ex: Relatorios e screenshots

