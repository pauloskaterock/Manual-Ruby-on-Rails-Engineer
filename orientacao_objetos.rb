
# A orientação a objetos é um paradigma de programação que utiliza conceitos como classes
# e objetos para organizar e estruturar o código. Em Ruby, a orientação a objetos
# é uma parte fundamental da linguagem.
# Vamos explorar os conceitos básicos com exemplos de código.

# Definindo uma Classe:
# Em Ruby, você define uma classe usando a palavra-chave class. Aqui está um exemplo simples:

class Pessoa
    def initialize(nome, idade)
      @nome = nome
      @idade = idade
    end
  
    def apresentar
      puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
    end
end

# Neste exemplo, criamos uma classe chamada Pessoa. Ela tem um construtor (initialize)
# que define propriedades
# como @nome e @idade. A classe também tem um método apresentar
# que imprime informações sobre a pessoa.

#---------------------------------------------------------------------------------

# Criando um Objeto:
# Uma vez que você tenha uma classe, pode criar objetos dessa classe. 
# aqui está um exemplo: 

pessoa1 = Pessoa.new("Alice", 25)
pessoa2 = Pessoa.new("Bob", 30)

# Neste exemplo, criamos duas instâncias da classe Pessoa (objetos) chamadas pessoa1 e pessoa2.

# -----------------------------------------------------------------------------------

# Acessando Métodos e Atributos:
# Você pode acessar os métodos e atributos de um objeto. Aqui está como chamamos o método apresentar:

pessoa1.apresentar
# Saída: Olá, meu nome é Alice e tenho 25 anos.

pessoa2.apresentar
# Saída: Olá, meu nome é Bob e tenho 30 anos.

# ---------------------------------------------------------------------------------------

# Herança:
# Em Ruby, você pode usar a herança para criar uma nova classe baseada
# em uma classe existente. Aqui está um exemplo:

class Estudante < Pessoa
    def initialize(nome, idade, curso)
      super(nome, idade)
      @curso = curso
    end
  
    def apresentar
      puts "Oi, eu sou um estudante! Me chamo #{@nome}, tenho #{@idade} anos e estudo #{@curso}."
    end
end
  
# A classe Estudante herda da classe Pessoa
# e adiciona uma propriedade @curso e um método apresentar personalizado.

#--------------------------------------------------------------------------------------------

# Polimorfismo:
# Polimorfismo permite que objetos de diferentes classes sejam tratados de maneira uniforme. Aqui está um exemplo:

def cumprimentar(pessoa)
    pessoa.apresentar
end
  
  estudante = Estudante.new("Carol", 22, "Engenharia")
  cumprimentar(estudante)
  # Saída: Oi, eu sou um estudante! Me chamo Carol, tenho 22 anos e estudo Engenharia.

# Neste exemplo, o método cumprimentar aceita qualquer objeto que responda
# ao método apresentar, permitindo que tanto objetos da classe Pessoa
# quanto da classe Estudante sejam passados.


  