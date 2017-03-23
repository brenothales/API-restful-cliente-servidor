# API Restful Cliente Servidor
Uma simple API para realizar um web services base para projetos iniciais. Esse foi criando uma listagem para um PetShop, utilizando filtros 
ainda esta no projeto inicial e fique a vontade para contribuir. 

## Back-end
- Ferramentas
  - Rails 5
  - Postgresql
  - Docker e Compose

## Subir o Servidor
  - É necessário que tenha o docker e docker-composse instalado
    - docker-compose build (Instalar o postgresql e dependências necessários)
    - docker-compose up (Instala bundle install )

## Criar Migrar e popular o banco (Por questões didáticas deixei os comandos manuais para serem executados )
    - docker-compose run website rails db:create
    - docker-compose run website rails db:migrate
    - docker-compose run website rails db:seed
  
## Estrutura
- appService
    app
      - channels/application_cable
      - controllers
        - api/v1
          - breeds_controller.rb
          - dogs_controller.rb
        - concerns
        - application_controller.rb
          - breeds_controller.rb
          - dogs_controller.rb
      - jobs
      - mailers
      - models
      - views
        - api/v1
          - breeds
            - index.json.jbuilder
          - dogs
           - index.json.jbuilder
        - layouts
    - bin
    - config
    - db
      - migrate
        - 20170317190448_create_breeds.rb
        - 20170318002452_create_dogs.rb
        - schema.rb
        - seeds.rb
    - lib/tasks
    - log
    - public
    - spec
    - test
    - .dockerignore
    - .gitignore
    - Dockerfile
    - Gemfile
    - Gemfile.lock
    - README.md
    - Rakefile
    - config.ru
    - docker-compose.yml

## Front-end    
 
  
