# TDD (Desenvolvimento Orientado por Testes) com Ruby on Rails usando RSpec e Capybara.

# O TDD é uma abordagem de desenvolvimento de software em que você escreve testes antes de escrever o código de produção. Ele segue um ciclo simples: "Red, Green, Refactor" - primeiro você escreve um teste que falha (Red), então você escreve o código para fazer o teste passar (Green) e, finalmente, você refatora o código para mantê-lo limpo e eficiente.

# Aqui está um exemplo passo a passo de como você poderia implementar o TDD em um projeto Ruby on Rails usando RSpec e Capybara:

# Passo 1: Configuração do projeto
# Certifique-se de que você tenha o Rails, RSpec e Capybara instalados no seu ambiente. Você pode instalar o RSpec e o Capybara adicionando-os ao seu Gemfile e executando bundle install.



# Gemfile

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
end


# Depois de instalar as gemas, execute rails generate rspec:install para configurar o RSpec no seu projeto.

# Passo 2: Escrever um teste
# Vamos supor que estamos criando um aplicativo de lista de tarefas. Comece escrevendo um teste para garantir que a página inicial exiba corretamente as tarefas existentes.



# spec/features/tasks_spec.rb

require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  scenario "Mostra uma lista de tarefas na página inicial" do
    Task.create!(name: "Comprar leite")
    visit root_path
    expect(page).to have_content "Comprar leite"
  end
end


# Passo 3: Execute o teste e observe falhar (Red)
# Execute bundle exec rspec no terminal e observe o teste falhar, pois ainda não escrevemos o código para exibir a lista de tarefas na página inicial.

# Passo 4: Escrever o código de produção
# Agora, vamos escrever o código para fazer o teste passar.



# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end


<!-- app/views/tasks/index.html.erb -->

<h1>Tarefas</h1>
<ul>
  <% @tasks.each do |task| %>
    <li><%= task.name %></li>
  <% end %>
</ul>


# Passo 5: Execute o teste novamente e observe passar (Green)
# Execute bundle exec rspec novamente e veja o teste passar agora que o código de produção foi escrito.

# Passo 6: Refatoração
# Se necessário, faça qualquer refatoração no código para melhorá-lo. Neste caso, nosso código parece limpo, então podemos considerar essa etapa concluída.

# Esse é um exemplo básico de como você pode aplicar TDD em um projeto Ruby on Rails usando RSpec e Capybara. Lembre-se de repetir esse ciclo para cada nova funcionalidade que você deseja adicionar ao seu aplicativo. Isso ajuda a garantir que seu código seja testado e funcione conforme o esperado desde o início.



