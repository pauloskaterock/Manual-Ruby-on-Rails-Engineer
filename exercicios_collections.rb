# 10 exercícios sobre collections em Ruby para que você possa treinar:

# Arrays:
# Soma dos Elementos:

# Crie um array de números e calcule a soma de todos os elementos.
# Pares e Ímpares:

numbers = [1, 2, 3, 4, 5]


soma = numbers.sum
puts "A soma dos elementos do array é: #{soma}"

# -----------------------------------------------------------------------

# Crie um array de números
numbers = [1, 2, 3, 4, 5]

# Separe os números em dois arrays: pares e ímpares
pares = numbers.select { |num| num.even? }
impares = numbers.select { |num| num.odd? }

puts "Números Pares: #{pares}"
puts "Números Ímpares: #{impares}"

# ------------------------------------------------------------------------

# Inversão de Array:

# Inverta a ordem dos elementos em um array.
array_reverso = [1,3,6,10]
puts "Numeros invertidos #{array_reverso.reverse}"

# ----------------------------------------------------------------------------

# Remoção de Duplicatas:

# Remova as duplicatas de um array.

array_duplo = [ 1, 22, 3, 22, 1, 55, 66 ,77, 77]
sem_duplicatas = array_duplo.uniq
puts "#{array_duplo} sem duplicatas é #{sem_duplicatas}"

# O método uniq no Ruby é usado para remover elementos duplicados de um array. 
# Ele retorna um novo array com os elementos únicos.

# Aqui está um exemplo de como usar o método uniq:

array = [1, 2, 2, 3, 4, 4, 5]
unique_array = array.uniq

puts unique_array.inspect #=> [1, 2, 3, 4, 5]

# Neste exemplo, o array original contém os elementos [1, 2, 2, 3, 4, 4, 5]. 
# Após aplicar o método uniq, o array resultante conterá apenas os 
# elementos [1, 2, 3, 4, 5], ou seja, os elementos duplicados foram removidos.

# ----------------------------------------------------------------------------------------------

# Hashes:
# Contagem de Palavras:

# Crie um hash para contar a frequência de cada palavra em uma frase.

# Frase de exemplo
frase = "ruby é uma linguagem de programação ruby é versátil e poderosa"

# Inicialize um hash para armazenar a contagem de palavras
contagem_palavras = Hash.new(0)

# Divida a frase em palavras e atualize a contagem no hash
palavras = frase.split(" ")
palavras.each { |palavra| contagem_palavras[palavra.downcase] += 1 }

# Exiba a contagem de palavras
contagem_palavras.each { |palavra, frequencia| puts "#{palavra}: #{frequencia}" }

# ---------------------------------------------------------------------------------


# O método split em Ruby é utilizado para dividir uma string em substrings com base em um 
# delimitador específico. 
# Essas substrings são então retornadas como elementos de um array.

# A sintaxe básica do método split é a seguinte:


# string.split(delimitador, limite)
# string: A string que será dividida.
# delimitador: O caractere ou expressão regular usado como ponto de divisão. Se não for especificado, 
# o espaço em branco é usado como padrão.
# limite: Um número opcional que define o número máximo de substrings no resultado.
# Aqui estão alguns exemplos para ilustrar o uso do método split:

# Exemplo 1: Divisão por Espaço em Branco (Padrão)

frase = "Esta é uma frase de exemplo"
palavras = frase.split
puts palavras
# Saída: ["Esta", "é", "uma", "frase", "de", "exemplo"]

# Neste exemplo, a string é dividida por espaços em branco, resultando em um array onde cada palavra é um elemento.

# Exemplo 2: Divisão por Vírgula


numeros = "1,2,3,4,5"
array_numeros = numeros.split(",")
puts array_numeros
# Saída: ["1", "2", "3", "4", "5"]

# Aqui, a string de números é dividida usando a vírgula como delimitador.

# Exemplo 3: Limite de Substrings

frase = "Esta é uma frase de exemplo"
palavras_limitadas = frase.split(" ", 3)
puts palavras_limitadas
# Saída: ["Esta", "é", "uma frase de exemplo"]

# Neste exemplo, o número máximo de substrings é limitado a 3. 
# Isso significa que apenas as três primeiras palavras são retornadas no array resultante.

# O método split é muito útil ao manipular strings e 
# é comumente usado para analisar dados ou extrair informações específicas de uma string em Ruby.

# ----------------------------------------------------------------------------------------------

# Filtrar Hash por Valor:

# Crie um hash e filtre os pares chave-valor onde o valor é maior que 10.

dados = {
    "produto_A" => 8,
    "produto_B" => 15,
    "produto_C" => 5,
    "produto_D" => 12
  }
  
  # Filtre os pares chave-valor onde o valor é maior que 10
  resultados_filtrados = dados.select { |produto, valor| valor > 10 }
  
  # Exiba os resultados filtrados
  puts "Pares Chave-Valor onde o Valor é maior que 10:"
  resultados_filtrados.each { |produto, valor| puts "#{produto}: #{valor}" }

  # --------------------------------------------------------------------------------------------

# Ranges:
# Intervalo de Números Pares:

# Crie um range que inclua apenas números pares de 1 a 10.

range_pares = (2..10).step(2)

# Exiba os números pares no range
puts "Números Pares de 1 a 10:"
puts range_pares.to_a

# -------------------------------------------------------------------------------------------------

# Conversão de Range para Array:

# Converta um range em um array e imprima seus elementos.

# Crie um range de exemplo
meu_range = (1..5)

# Converta o range em um array
meu_array = meu_range.to_a

# Exiba os elementos do array
puts "Elementos do Array:"
puts meu_array
 
#  -----------------------------------------------------------------------------------------------

# Strings:
# Contagem de Vogais:

# Crie uma string e conte o número de vogais presentes nela.

# Crie uma string de exemplo
minha_string = "Ruby é uma linguagem de programação"

# Conte o número de vogais na string
numero_vogais = minha_string.downcase.count("aeiou")

# Exiba o resultado
puts "A string tem #{numero_vogais} vogais."


#  --------------------------------------------------------------------------------------------

# Reversão de Palavras:

# Crie uma string e reverta a ordem das palavras.

string_reverse = "Software Engineer"
puts string_reverse.reverse









