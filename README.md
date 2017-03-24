# API Restful Cliente Servidor
Uma simple API para realizar um web services base para projetos iniciais. Esse foi criando uma listagem para um PetShop, utilizando filtros 
ainda esta no projeto inicial e fique a vontade para contribuir. 

## Back-end
- Ferramentas
  - Rails 5
  - Postgresql
  - Docker e Compose

## Subir o Servidor
  - É necessário que tenha o docker e docker-compose instalado
    - Entre no diretório cd appService/
    - docker-compose build (Instalar o postgresql e dependências necessários)
    - docker-compose up (Instala bundle install )

## Criar Migrar e popularizaer o Banco de Dados
  (Por questões didáticas deixei os comandos manuais para serem executados em outra aba do terminal).
    - docker-compose run website rails db:create
    - docker-compose run website rails db:migrate
    - docker-compose run website rails db:seed 
    ou 
    - docker-compose run website rails db:setup
  
## Estrutura
- appService
   - app
      - channels/application_cable
      - controllers
        - api/v1
          - breeds_controller.rb --> Controller index para raça do animais
          - dogs_controller.rb   --> Controller index para dogs 
        - concerns
        - application_controller.rb
          - breeds_controller.rb
          - dogs_controller.rb
      - jobs
      - mailers
      - models --> Com validações e relacionamentos
      - views
        - api/v1
          - breeds
            - index.json.jbuilder --> Estrutura do JSON raças customizada 
          - dogs
           - index.json.jbuilder --> Estrutura do JSON dogs customizada 
        - layouts
    - bin
    - config
    - db
      - migrate
        - 20170317190448_create_breeds.rb --> Arquivo de migrações da raça
        - 20170318002452_create_dogs.rb --> Arquivo de migrações do dog
        - schema.rb
        - seeds.rb --> arquivos de popularizar o banco 
    - lib/tasks
    - log
    - public
    - spec
    - test
    - .dockerignore
    - .gitignore
    - Dockerfile --> arquivo de configuração do container 
    - Gemfile
    - Gemfile.lock
    - README.md
    - Rakefile
    - config.ru
    - docker-compose.yml arquivo de configuração do docker-compose

## Front-end
- Ferramentas
  - Angularjs
  - Materialize-Design
  - Node
  - Gulp
  - Pug
  - Angular-DataGrid
  - Sass
  - JS

  ## Subir o Cliente
    - Entrar na diretório
      - cd frontend/
    - npm install 
    - gulp && gulp serve  
  
  -frontend
    - app
      - app.js --> Angularjs
      - dataGrid.js
    - assets/jade  --> Arquivos para desenvolvimento
      - partials
        - filter.pug
        - head.pug
        - layout.pug
        - nav.pug
        - pagination.pug
      - index.pug
    - public --> Arquivos Estático
      - css
      - js
        - app.js   --> Arquivos javaScript compilados em único local
      - index.html --> Arquivo para compilado
    - gulpfile.js  --> Tarefas
    - package.json

# Implementações Futuras
  - Criar e melhoras mais filtros 
  - Restringir nos números de requisições de acesso ao sevidor
  - Implantar cache na api para aumentar a perfomace
  
