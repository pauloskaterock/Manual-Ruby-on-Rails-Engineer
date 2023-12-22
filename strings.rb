# Strings (Conjunto de Caracteres)
# Strings são quaisquer tipos de caracteres (letras, dígitos, 
# pontuação) cercados por aspas. Aspas, simples ou duplas, são 
# usadas para se criar strings.

"laboratoriodomar", '2021'  "Estes 
quadrinhos são hilários!" # são exemplos


frase_da_avril = "Eu estou muito mais sábia. Agora eu sei   como as coisas são -- o que você tem   que fazer e como trabalhar isso."

<setup>
   frase_da_oprah = "O"
   frase_da_avril = "A"
   debate_ashlee_simpson = "D"
 </setup>
 print frase_da_oprah
 print frase_da_avril
 print debate_ashlee_simpson

 puts "-------------------------------------------------------------------------"

 Em Ruby, as strings são sequências de caracteres e podem ser manipuladas de várias maneiras. Aqui estão alguns exemplos de como trabalhar com strings em Ruby:

1. Criando Strings:

# Usando aspas duplas
string1 = "Olá, mundo!"

# Usando aspas simples
string2 = 'Ruby é divertido!'

############################################################################
2. Interpolação de Variáveis:

nome = "Alice"
idade = 30

# Interpolação de variáveis em uma string
mensagem = "Olá, #{nome}! Você tem #{idade} anos."
puts mensagem
# Saída: Olá, Alice! Você tem 30 anos.

###############################################################################3

3. Operações Básicas:

# Concatenação
concatenacao = "Hello" + " " + "World"

# Repetição
repeticao = "abc" * 3  # Resultado: "abcabcabc"

###############################################################################


4. Manipulação de Strings:

# Tamanho da string
tamanho = "Ruby".length

# Conversão para maiúsculas e minúsculas
maiusculas = "ruby".upcase
minusculas = "RUBY".downcase

# Remoção de espaços em branco
espacos = "   Ruby   ".strip

# Substituição de substrings
substituicao = "Olá, mundo!".sub("mundo", "Ruby")

# Divisão em substrings
divisao = "Ruby,Python,Java".split(",")

#############################################################################3


5. Comparação de Strings:

# Comparação de igualdade
igualdade = "ruby" == "Ruby"  # Retorna false

# Comparação de ordem alfabética
comparacao = "abc" <=> "def"  # Retorna -1 (menor que)

#########################################################################

6. Verificação de Substring:

# Verificação de substring
contem = "Hello, World!".include?("World")  # Retorna true

# -----------------------------------------------------------------


# O que você pode fazer com cordas?
# As cordas podem fazer muitas coisas por você.

# Por exemplo, você pode pedir a uma cadeia de caracteres seu tamanho:

"bacon".size

# você pode dizer a cadeia de caracteres para maiúsculas:

"bacon".upcase

# "BACON"

# Chamamos isso de "métodos", e são muitos.

# Existem métodos que permitem substituir toda ou parte da cadeia de caracteres.

# Gostar:gsub

"bacon".gsub("acon", "inary")

# "binary"

# Ou para dividir a cadeia de caracteres em uma lista de caracteres:

"bacon".chars

# ["b", "a", "c", "o", "n"]

# Convertendo uma cadeia de caracteres em inteiro:

"1".to_i

# Convertendo um inteiro em uma cadeia de caracteres:

1.to_s

# Para combinar números e strings você precisa de uma técnica chamada "string interpolation".

age = 20
name = "David"

puts "Hello #{name}, our records tell us that you're #{age} years old!"