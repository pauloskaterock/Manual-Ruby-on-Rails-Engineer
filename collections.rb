# Em Ruby, o termo "collections" refere-se a tipos de dados que podem armazenar e 
# organizar múltiplos valores. Alguns dos tipos de coleções mais comuns em Ruby 
# incluem arrays, hashes, ranges, e strings. Vamos explorar cada um deles com exemplos práticos:

# 1. Arrays:
# Arrays são coleções ordenadas de elementos, acessados por seus 
# índices (que começam em 0). Podem conter diferentes tipos de objetos.


# Exemplo de um array de números
numbers = [1, 2, 3, 4, 5]

# Exemplo de um array de strings
fruits = ["apple", "banana", "orange"]

# Acessando elementos por índice
puts numbers[0] # Saída: 1
puts fruits[1]  # Saída: banana


# 2. Hashes:
# Hashes são coleções associativas onde os elementos são armazenados como pares chave-valor. Cada chave é única.


# Exemplo de um hash representando informações sobre uma pessoa
person = {
  "name" => "John",
  "age" => 30,
  "city" => "New York"
}

# Acessando valores por chave
puts person["name"] # Saída: John
puts person["age"]  # Saída: 30


# 3. Ranges:
# Ranges representam uma sequência de valores entre um início e um fim. 
# Eles são utilizados para criar intervalos.


# Exemplo de um range de números
numeric_range = 1..5

# Iterando sobre o range
numeric_range.each { |num| puts num }
# Saída:
# 1
# 2
# 3
# 4
# 5

# Exemplo de um range de letras
letter_range = 'a'..'e'

# Iterando sobre o range de letras
letter_range.each { |letter| puts letter }
# Saída:
# a
# b
# c
# d
# e


# 4. Strings:
# Em Ruby, strings também podem ser consideradas coleções de caracteres. 
# Você pode iterar sobre os caracteres de uma string.


# Exemplo de uma string
word = "Ruby"

# Iterando sobre os caracteres da string
word.each_char { |char| puts char }
# Saída:
# R
# u
# b
# y


# Estes são exemplos práticos de como as coleções são utilizadas em Ruby. 
# Elas oferecem flexibilidade e versatilidade para lidar com diferentes tipos de dados e cenários de programação.