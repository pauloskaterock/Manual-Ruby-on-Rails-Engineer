# Em Ruby on Rails, os "helpers" são módulos ou métodos auxiliares que são usados para organizar
# e reutilizar código em suas views (visualizações) ou em outras partes do aplicativo. 
# Eles fornecem funcionalidades adicionais para simplificar a escrita de código e tornar as 
# views mais limpas e legíveis. Os helpers são especialmente úteis para realizar tarefas comuns, 
# como formatação de datas, geração de links, manipulação de strings, entre outras.

# Aqui estão alguns detalhes sobre os helpers em Ruby on Rails:

# Tipos de Helpers:

# View Helpers:

# São os helpers mais comuns e são usados nas views para gerar HTML ou realizar tarefas 
# relacionadas à apresentação. Exemplos incluem link_to para criar links, form_for para gerar 
# formulários, image_tag para exibir imagens, e assim por diante.

# Exemplo:


<%= link_to "Página Inicial", root_path >

# Controller Helpers:

# São usados nos controladores para realizar tarefas relacionadas ao controlador. 
# Eles são muitas vezes incluídos como módulos para fornecer funcionalidades adicionais. 
# Um exemplo comum é before_action, que especifica um método a ser executado antes de uma ação no controlador.

# Exemplo:


class PostsController < ApplicationController
  before_action :authenticate_user!
end

# Asset Helpers:

# São usados para trabalhar com assets, como imagens, folhas de estilo e scripts. 
# Exemplos incluem image_path para obter o caminho de uma imagem e 
# stylesheet_link_tag para incluir folhas de estilo.

# Exemplo:


<%= image_tag "logo.png" >

# Funcionamento dos Helpers:
# Inclusão Automática:

# Muitos helpers são incluídos automaticamente nas views, tornando-os prontamente disponíveis. 
# Por exemplo, você pode usar o link_to em uma view sem a necessidade de incluir manualmente um módulo.
# Personalização:

# Você pode criar seus próprios helpers personalizados para encapsular lógica específica do 
# seu aplicativo. Esses helpers podem ser organizados em módulos ou classes para melhorar a 
# modularidade do código.

# Exemplo:


module ApplicationHelper
  def formato_data(data)
    data.strftime("%d/%m/%Y")
  end
end

# Helpers de Texto:

# Existem helpers dedicados para manipulação de texto, como pluralize para pluralizar 
# palavras, truncate para encurtar textos longos, e sanitize para remover HTML indesejado.
# Exemplo:


<%= pluralize(3, "comment") %> #=> "3 comments"

# Usando Helpers em Controllers:

# Alguns helpers podem ser usados diretamente nos controladores. 
# Isso é feito incluindo o módulo ActionView::Helpers no controlador.

# Exemplo:


class ExemploController < ApplicationController
  include ActionView::Helpers::DateHelper

  def index
    @tempo_passado = time_ago_in_words(Time.now - 3.hours)
  end
end

# Em resumo, os helpers em Ruby on Rails são ferramentas poderosas para simplificar a 
# criação e manutenção de código, tornando o desenvolvimento mais eficiente e legível. 
# Eles desempenham um papel significativo na abordagem de "convenção sobre configuração" 
# do framework, contribuindo para a produtividade do desenvolvedor.

puts " ------------------------COMO CRIAR SEUS HELPERS----------------------------"


# Em Ruby on Rails, você pode criar seus próprios helpers para encapsular lógica de 
# visualização ou funções comuns que você deseja reutilizar em várias partes de suas views. 
# Helpers são módulos Ruby que fornecem métodos adicionais para suas views.

# Aqui está um guia passo a passo para criar seus próprios helpers:

# 1. Crie um novo arquivo para o Helper:
# Dentro do diretório app/helpers, crie um novo arquivo chamado, por exemplo, custom_helpers.rb.

# 2. Defina o Módulo do Helper:
# Abra o arquivo custom_helpers.rb e defina um módulo que conterá seus métodos de helper. Por exemplo:


# app/helpers/custom_helpers.rb

module CustomHelpers
  def format_data(data)
    data.strftime("%d/%m/%Y")
  end

  def truncate_text(text, length)
    text.length > length ? "#{text[0, length]}..." : text
  end

  # Adicione outros métodos conforme necessário
end


# 3. Inclua o Módulo no ApplicationHelper:
# O ApplicationHelper é o principal helper que é incluído automaticamente em todas as views. 
# Abra o arquivo app/helpers/application_helper.rb e inclua o módulo que você acabou de criar:

# app/helpers/application_helper.rb

module ApplicationHelper
  include CustomHelpers
end

# 4. Use os Helpers nas Views:
# Agora você pode usar os métodos do seu helper em qualquer uma das suas views. Por exemplo:


<!-- app/views/exemplo/index.html.erb -->

<h1><%= format_data(Time.now) %></h1>
<p><%= truncate_text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 20) %></p>

# Dica Adicional:

# Se você tem métodos que são específicos para um controlador, você pode criar um 
# helper específico para esse controlador. Por exemplo, se você tiver um controlador 
# chamado PostsController, pode criar um helper chamado PostsHelper para conter 
# métodos específicos desse controlador.

# Reinicie o Servidor:

# Após criar ou atualizar seus helpers, é uma boa prática reiniciar o servidor 
# para garantir que as mudanças sejam refletidas:


rails server

# Ao seguir esses passos, você pode criar seus próprios helpers 
# personalizados para melhorar a modularidade e a reutilização de código em suas views.




