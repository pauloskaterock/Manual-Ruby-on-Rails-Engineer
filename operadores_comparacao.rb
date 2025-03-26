# Aqui estão todos os operadores de comparação em Ruby, juntamente com exemplos de código:

# Igualdade: == verifica se dois objetos são iguais.

a = 5
b = 5
# puts a == b  # true


# Desigualdade: != verifica se dois objetos não são iguais.

a = 5
b = 10
puts a != b  # true
# Maior que: > verifica se um objeto é maior que outro.

a = 10
b = 5
puts a > b  # true
# Menor que: < verifica se um objeto é menor que outro.

a = 5
b = 10
puts a < b  # true
# Maior ou igual a: >= verifica se um objeto é maior ou igual a outro.

a = 10
b = 10
puts a >= b  # true
# Menor ou igual a: <= verifica se um objeto é menor ou igual a outro.

a = 5
b = 10
puts a <= b  # true
# Comparação de objeto <=>: <=> compara dois objetos, retornando -1 se o objeto da esquerda for menor, 0 se forem iguais e 1 se o objeto da esquerda for maior.

a = 5
b = 10
puts a <=> b  # -1
# Esses são os operadores de comparação em Ruby, e eles são frequentemente usados em declarações condicionais e em métodos de comparação de objetos.



#################################################################

# 1. Operadores de Comparação (Usados em Condições)
# Antes de vermos as estruturas condicionais, é importante conhecer os operadores que avaliam condições:

# Operador	Descrição	Exemplo
# ==	Igualdade	5 == 5 # true
# !=	Diferente	5 != 3 # true
# >	Maior que	10 > 5 # true
# <	Menor que	3 < 2 # false
# >=	Maior ou igual	5 >= 5 # true
# <=	Menor ou igual	4 <= 3 # false
# ===	Casamento (case equality)	(1..3) === 2 # true
# =~	Casamento com regex	"Ruby" =~ /R/ # 0
# !~	Não casamento com regex	"Ruby" !~ /x/ # true
# 2. Estruturas Condicionais
# A. if, elsif, else

# Usado para executar blocos de código com base em condições.


# idade = 18

# if idade < 18
#   puts "Menor de idade"
# elsif idade == 18
#   puts "Tem 18 anos!"
# else
#   puts "Maior de idade"
# end
# Forma inline (if pós-fixo)

# puts "Maior de idade" if idade >= 18


# B. unless
# Executa o bloco se a condição for falsa (oposto do if).

  
# unless idade >= 18
#   puts "Menor de idade"
# end
# Forma inline (unless pós-fixo)

# puts "Menor de idade" unless idade >= 18


# C. case (Switch-Case)
# Compara um valor com múltiplas condições usando when.


# dia = "segunda"

# case dia
# when "segunda"
#   puts "Dia útil"
# when "sábado", "domingo"
#   puts "Fim de semana"
# else
#   puts "Outro dia"
# end
# Com === (Case Equality)

# case 5
# when 1..10 then puts "Entre 1 e 10"
# when String then puts "É uma string"
# else puts "Outro valor"
# end


# D. Operador Ternário (? :)
# Condicional em uma única linha.


# idade = 20
# status = idade >= 18 ? "Adulto" : "Menor"
# puts status # "Adulto"


# E. && (AND) e || (OR) em Condições
# Usados para combinar condições.


# # && (AND)
# if idade > 18 && idade < 60
#   puts "Adulto em idade ativa"
# end

# # || (OR)
# if idade < 18 || idade >= 60
#   puts "Menor de idade ou idoso"
# end
# Curto-circuito (Short-Circuit Evaluation)
# && para executar código condicionalmente:


# usuario = usuario_logado && usuario_logado.nome
# || para valores padrão:


# nome = nome || "Visitante"
# # Ou (Ruby 2.3+):
# nome = nome ||= "Visitante"


# 3. Operadores de Controle em Blocos
# A. next (Continue)
# Pula para a próxima iteração em loops.


# (1..5).each do |i|
#   next if i == 3
#   puts i
# end
# # Saída: 1, 2, 4, 5


# B. break
# Interrompe um loop ou bloco.


# (1..10).each do |i|
#   break if i > 5
#   puts i
# end
# # Saída: 1, 2, 3, 4, 5


# C. return
# Encerra a execução de um método.


# def verificar_idade(idade)
#   return "Inválido" if idade <= 0
#   idade >= 18 ? "Adulto" : "Menor"
# end


# 4. Truthy e Falsy em Ruby
# Valores falsy (considerados falsos em condições):

# false

# nil

# Todo o resto é truthy (incluindo 0, "", []).


# if 0
#   puts "0 é truthy!"
# end



# Resumo dos Operadores Condicionais
# Estrutura	Uso
# if/elsif/else	Condições simples e múltiplas.
# unless	Executa se a condição for falsa.
# case/when	Múltiplas comparações.
# ? :	Ternário para condições simples.
# &&, `		`	Combinação de condições.
# next, break, return	Controle de fluxo.
# Exemplo Prático Combinado

# def classificar_idade(idade)
#   case idade
#   when 0..12 then "Criança"
#   when 13..17 then "Adolescente"
#   when 18..60 then "Adulto"
#   else "Idoso"
#   end
# end

# puts classificar_idade(25) # "Adulto"