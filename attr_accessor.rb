# attr_accessor
# O método attr_accessor é usado para criar tanto métodos de leitura quanto de escrita para os atributos de uma classe. Isso permite que você leia e modifique os valores dos atributos diretamente. Aqui está um exemplo:


class Pessoa
  attr_accessor :nome  # Cria métodos de leitura e escrita para o atributo nome

  def initialize(nome)
    @nome = nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João
pessoa.nome = "Maria"  # Define o valor do atributo nome
puts pessoa.nome  # Saída: Maria

# No exemplo acima, attr_accessor :nome cria automaticamente métodos nome e nome= que permitem ler e definir o valor do atributo @nome. Isso simplifica muito a definição de atributos comuns em Ruby.

#--------------------------------------------------------------------------------------------

# attr_accessor: Este método cria métodos de leitura e escrita para o atributo especificado.

class Pessoa
  attr_accessor :nome

  def initialize(nome)
    @nome = nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João
pessoa.nome = "Maria"
puts pessoa.nome  # Saída: Maria