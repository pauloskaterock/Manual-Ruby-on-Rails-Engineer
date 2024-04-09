# Em Ruby on Rails, as funções são geralmente referidas como métodos
# e elas são definidas dentro de classes. Aqui estão exemplos de como funcionam as funções
# em Ruby on Rails
# usando métodos de instância, métodos de classe e métodos de ajudante.

puts "------------------------------------------------------------------"

# Métodos de Instância:
# Métodos de instância são definidos em uma classe e são chamados em instâncias dessa classe.

class Exemplo
    def saudacao(nome)
      "Olá, #{nome}!"
    end
end
  
  # Uso do método de instância
  objeto = Exemplo.new
  puts objeto.saudacao("João")  # Saída: Olá, João!

puts "------------------------------------------------------------------------"

# Métodos de Classe:
# Métodos de classe são chamados na própria classe, não em instâncias dela.

class Exemplo
    def self.inverter_string(texto)
      texto.reverse
    end
  end
  
  # Uso do método de classe
  puts Exemplo.inverter_string("Ruby")  # Saída: ybuR

  
  puts "-----------------------------------------------------------------------"

# Métodos de Ajudante:
# Métodos de ajudante são usados em Rails para encapsular lógica de apresentação nas visualizações.

# No arquivo de ajudante (app/helpers/application_helper.rb)

module ApplicationHelper
    def formatar_data(data)
      data.strftime("%d/%m/%Y")
    end
  end

  # No arquivo de visualização (por exemplo, app/views/posts/show.html.erb):

#   <!-- Uso do método de ajudante em uma visualização -->
#     <%= formatar_data(@post.created_at) %>
    

puts "----------------------------------------------------------------------------"

# Métodos em Modelos:
# Em Ruby on Rails, os modelos também têm métodos associados a eles.
# Esses métodos podem ser gerados automaticamente pelo ActiveRecord ou 
# definidos manualmente.

class Post < ApplicationRecord
    def publicado?
      status == "publicado"
    end
  end
  
  # Uso do método em um controlador
  post = Post.find(1)
  puts post.publicado?  # Retorna true ou false dependendo do status do post

  
  puts "-----------------------------------------------------------------------------"

# Métodos de Controladores:
# Os métodos em controladores são usados para manipular as ações HTTP.

class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
  end

#   No exemplo acima, o método index é chamado quando alguém acessa a página de índice dos posts. 
#   Ele pode ser usado para buscar dados do modelo e passá-los para a visualização.

puts "----------------------------------------------------------------------------------------"



# Em Ruby on Rails, como em muitas linguagens de programação, métodos são blocos de código que 
# realizam uma tarefa específica. Eles são usados para agrupar e reutilizar funcionalidades no seu código. 
# Vamos explorar os conceitos básicos de métodos em Ruby e como eles são utilizados em Ruby on Rails.

# Definição de Métodos em Ruby:
# Em Ruby, você pode definir métodos da seguinte maneira:


def nome_do_metodo(parametro1, parametro2)
  # Código a ser executado
end

# def: Palavra-chave para definir um método.

# nome_do_metodo: O nome que você dá ao método. Siga as convenções de nomenclatura para 
# métodos em Ruby (normalmente em snake_case).

# (parametro1, parametro2): Parâmetros que o método aceita. Eles são opcionais.
# Código a ser executado: O bloco de código que será executado quando o método for chamado.

# Chamando Métodos em Ruby:
# Você chama um método simplesmente usando seu nome e, se necessário, fornecendo os argumentos esperados:


# nome_do_metodo(valor1, valor2)
# Exemplo Básico de Método em Ruby on Rails:

# Suponha que você tenha um modelo Person com atributos first_name e last_name e 
# você deseja criar um método que retorne o nome completo da pessoa. Você poderia fazer algo assim no seu modelo:


# app/models/person.rb

class Person < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end
end

# Aqui, full_name é um método que retorna uma string concatenando first_name e last_name.

# Utilizando Métodos em Views:

# Em uma view do Rails, você pode chamar esse método da seguinte forma:


<!-- app/views/people/show.html.erb -->

<h1><%= @person.full_name %></h1>
Métodos em Controladores:

# Você também pode definir e chamar métodos nos controladores. Por exemplo:


# app/controllers/people_controller.rb

class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @formatted_name = format_name(@person.full_name)
  end

  private

  def format_name(name)
    name.upcase
  end
end
# Aqui, format_name é um método privado no controlador que formata o nome em maiúsculas antes de ser exibido na view.

# Métodos de Classe em Ruby on Rails:
# Você pode definir métodos de classe usando self:


class Person < ApplicationRecord
  def self.by_last_name(last_name)
    where(last_name: last_name)
  end
end


# Aqui, by_last_name é um método de classe que retorna uma consulta ActiveRecord.

# Estes são conceitos básicos sobre como os métodos funcionam em Ruby on Rails. 
# Eles são essenciais para a organização do código, reutilização de lógica e 
# manutenção do princípio DRY (Don't Repeat Yourself).



# https://devdocs.io/ruby~3.2/syntax/methods_rdoc
# https://devdocs.io/ruby~3.2/syntax/methods_rdoc
# https://devdocs.io/ruby~3.2/syntax/methods_rdoc
# https://devdocs.io/ruby~3.2/syntax/methods_rdoc