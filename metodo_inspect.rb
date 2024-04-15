# O método inspect em Ruby é usado para obter uma representação em forma de string de um objeto. Esta representação é útil para depuração e visualização de objetos em Ruby. Aqui está um exemplo de como você pode usar o método inspect:

class Pessoa
  attr_accessor :nome, :idade , :cidade

  def initialize(nome, idade, cidade)
    @nome = nome
    @idade = idade
    @cidade = cidade
  end
end

# Criando um objeto Pessoa
pessoa = Pessoa.new("João", 30, "maua")

# Utilizando o método inspect para obter uma representação em forma de string do objeto

puts pessoa.inspect

# Neste exemplo, temos uma classe Pessoa com dois atributos: nome e idade. Quando criamos um novo objeto Pessoa com o nome "João" e idade 30, podemos usar o método inspect para visualizar uma representação em forma de string desse objeto. O método inspect retornará algo como #<Pessoa:0x00007fd62003e0a0 @nome="João", @idade=30>, que mostra o nome e a idade do objeto pessoa. Isso é útil para depurar e entender os estados dos objetos durante a execução do programa.