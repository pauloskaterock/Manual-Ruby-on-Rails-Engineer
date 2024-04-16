# Em Ruby, tudo é um objeto. Desde números e strings até classes e métodos, todos são objetos. Aqui estão alguns exemplos comuns de objetos em Ruby:

# Strings: Sequências de caracteres delimitadas por aspas simples (') ou duplas (").

str = "Olá, mundo!"

# Números: Inteiros, ponto flutuante e outros tipos numéricos são objetos em Ruby.

inteiro = 10
flutuante = 3.14

# Arrays: Coleções ordenadas de objetos.

array = [1, 2, 3, 4, 5]

# Hashes: Coleções de pares chave-valor.

hash = { "nome" => "João", "idade" => 30 }

#  

class Pessoa
  attr_accessor :nome, :idade
end

pessoa = Pessoa.new
pessoa.nome = "Maria"
pessoa.idade = 25
Métodos: Métodos também são objetos em Ruby.

def saudacao
  puts "Olá!"
end

# Esses são apenas alguns exemplos básicos. Em Ruby, tudo é um objeto, o que significa que todos esses tipos de dados podem ser manipulados e passados como argumentos de métodos.



