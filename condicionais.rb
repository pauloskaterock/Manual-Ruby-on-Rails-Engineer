# Em Ruby, as condicionais são estruturas de controle de fluxo que permitem que o 
# programa execute diferentes blocos de código dependendo de certas condições. 
# As condicionais em Ruby são geralmente expressas por meio das palavras-chave if, else, elsif, e unless. 
# Vamos explorar essas estruturas em detalhes:

# 1. if, else e elsif:

# A estrutura básica de uma condicional em Ruby utiliza if, else, e opcionalmente elsif 
# para verificar condições e executar diferentes blocos de código. Aqui está um exemplo:


idade = 18

if idade >= 18
  puts "Você é maior de idade."
else
  puts "Você é menor de idade."
end

# if: Verifica se uma condição é verdadeira.
# else: Executa um bloco de código se a condição do if for falsa.
# elsif: Permite verificar condições adicionais se a condição do if for falsa.


# 2. unless:

# unless é uma estrutura inversa a if. Ela executa um bloco de código apenas se a 
# condição é falsa. Aqui está um exemplo:


idade = 15

unless idade >= 18
  puts "Você é menor de idade."
else
  puts "Você é maior de idade."
end

# Neste caso, o bloco dentro do unless 
# será executado se a condição for falsa (idade menor que 18).

# 3. Operadores Ternários:
# Ruby suporta operadores ternários que permitem escrever condicionais de forma mais concisa. Um exemplo:


idade = 20

mensagem = idade >= 18 ? "Maior de idade" : "Menor de idade"
puts mensagem


#Este código é equivalente ao exemplo usando if e else. O operador ternário é útil 
#quando você precisa tomar uma decisão simples em uma única linha.

# 4. case:
# case é usado quando você tem várias condições a serem verificadas. Aqui está um exemplo:


dia_da_semana = "terça"

case dia_da_semana
when "segunda", "terça", "quarta", "quinta", "sexta"
  puts "Dia útil"
when "sábado", "domingo"
  puts "Final de semana"
else
  puts "Dia inválido"
end


# case permite testar várias condições sem a necessidade de várias palavras-chave if.

# Estas são algumas das estruturas condicionais básicas em Ruby. 
# Elas permitem que você controle o fluxo de execução do seu programa com 
# base em diferentes condições. Experimente com diferentes casos para 
# obter uma compreensão mais profunda de como as condicionais funcionam em Ruby.

# ------------------------------------------------------------------------------






