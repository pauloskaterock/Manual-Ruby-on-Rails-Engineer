# attr_writer
# O método attr_writer é usado para criar apenas métodos de escrita (setters) para os atributos de uma classe. Isso permite que você modifique os valores dos atributos, mas não os leia diretamente. Aqui está um exemplo:

class Pessoa
  attr_writer :nome  # Cria um método de escrita para o atributo nome

  def initialize(nome)
    @nome = nome
  end
end

pessoa = Pessoa.new("João")
pessoa.nome = "Maria"  # Define o valor do atributo nome

# No exemplo acima, attr_writer :nome cria automaticamente um método nome= que permite definir o valor do atributo @nome, mas não permite lê-lo diretamente.

