# attr_reader
# O método attr_reader é usado para criar apenas métodos de leitura (getters) para os atributos de uma classe. Isso permite que você acesse os valores dos atributos, mas não os modifique diretamente. Aqui está um exemplo:

class Pessoa
  attr_reader :nome  # Cria um método de leitura para o atributo nome

  def initialize(nome)
    @nome = nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João


# No exemplo acima, attr_reader :nome cria automaticamente um método nome que permite ler o valor do atributo @nome, mas não permite modificá-lo.