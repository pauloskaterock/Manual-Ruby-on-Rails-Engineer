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
ruby
Copy code
# Verificação de substring
contem = "Hello, World!".include?("World")  # Retorna true