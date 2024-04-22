# Em Ruby, métodos de atributos são usados para definir comportamentos para acessar e modificar os atributos de uma classe. Eles são geralmente usados para encapsular o acesso aos dados da classe, o que ajuda a manter um código mais limpo e coeso. Aqui estão alguns exemplos de como você pode definir métodos de atributos em Ruby:

# Método de Atributo Simples

class Pessoa
  def initialize(nome)
    @nome = nome
  end

  # Método de leitura (getter)
  def nome
    @nome
  end

  # Método de escrita (setter)
  def nome=(novo_nome)
    @nome = novo_nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João
pessoa.nome = "Maria"
puts pessoa.nome  # Saída: Maria


# Método de Atributo com Acesso de Leitura Apenas (Somente Getter)

class Pessoa
  def initialize(nome)
    @nome = nome
  end

  # Apenas método de leitura (getter)
  def nome
    @nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João
pessoa.nome = "Maria"  # Isso resultará em um erro, pois não há um método de escrita definido.

# Método de Atributo com Acesso de Escrita Apenas (Somente Setter)

class Pessoa
  # Atributo somente para escrita (setter)
  def nome=(novo_nome)
    @nome = novo_nome
  end
end

pessoa = Pessoa.new
pessoa.nome = "Maria"  # Definindo o nome usando o método de escrita

# Método de Atributo com Acesso de Leitura e Escrita (Usando attr_accessor)

class Pessoa
  attr_accessor :nome  # Isso define automaticamente métodos de leitura e escrita para o atributo nome

  def initialize(nome)
    @nome = nome
  end
end

pessoa = Pessoa.new("João")
puts pessoa.nome  # Saída: João
pessoa.nome = "Maria"
puts pessoa.nome  # Saída: Maria

# Os métodos attr_reader, attr_writer e attr_accessor são métodos de classe úteis para definir rapidamente esses métodos de atributos padrão. O attr_reader cria apenas o método de leitura, o attr_writer cria apenas o método de escrita, e o attr_accessor cria ambos.