# Números
# O tipo mais básico de número é um integer (número inteiro), uma 
# série de dígitos que podem começar com um sinal de menos ou 
# de mais.

1, 23 e -10000  #são exemplos.

# Vírgulas não são permitidas em números, mas travessões sim. 
# Então se você acha melhor marcar os milhares para que o número 
# fique mais legível, use um travessão.

habitantes =  12_000_000_000

# Números decimais são chamados de floats (números reais ou 
# ponto flutuante) no Ruby. Números reais consistem em números 
# com casas decimais ou em notação científica.

3.14, -808.08 e 12.043e-04 são exemplos.00  

puts "-----------------------------------------------------------------------"

# Em Ruby, os números podem ser representados de várias maneiras,
#  e a linguagem suporta diferentes tipos de dados numéricos. Vamos explorar os principais tipos:

# Inteiros (Integer):

inteiro1 = 42
inteiro2 = -10

# Inteiros em Ruby podem ser positivos ou negativos.

#---------------------------------------------------------------------------------



# Ponto Flutuante (Float):

float1 = 3.14
float2 = -0.5

# Números de ponto flutuante representam números reais ou números com parte fracionária.

# ---------------------------------------------------------------------------------------------

# Número Complexo (Complex):

complexo = 2 + 3i

# Ruby suporta números complexos usando a notação i para representar a unidade imaginária.

# --------------------------------------------------------------------------------------------

# Notação Científica:

cientifico = 1.23e4  # Equivalente a 1.23 * 10^4

# A notação científica é suportada para representar números em potências de 10.

# -----------------------------------------------------------------------------------------

# Exemplos de Operações Numéricas:

# Adição
soma = 5 + 3
# Subtração
subtracao = 10 - 4
# Multiplicação
multiplicacao = 6 * 2
# Divisão
divisao = 8 / 2
# Resto da divisão (módulo)
resto = 15 % 4
# Potenciação
potencia = 2**3

# Conversão entre Tipos Numéricos:

# Conversão para inteiro
numero_em_string = "42"
inteiro = numero_em_string.to_i

# Conversão para ponto flutuante
numero_em_string = "3.14"
float = numero_em_string.to_f
