# Introdução
# Sua amiga Eliud herdou uma fazenda da avó Tigist. A avó dela era inventora e tinha tendência a construir coisas de forma excessivamente complexa. O galinheiro tem um visor digital que mostra um número codificado representando as posições de todos os ovos que podem ser coletados.

# Eliud está pedindo que você escreva um programa que mostre o número real de ovos no galinheiro.

# A codificação das informações de posição é calculada da seguinte forma:

# Examine os possíveis locais de postura de ovos e marque um 1para um ovo existente ou um 0para um local vazio.
# Converta o número de binário para decimal.
# Exiba o resultado no visor.
# Exemplo 1
# Sete caixas-ninho individuais dispostas em uma fileira, cujos primeiro, terceiro, quarto e sétimo ninhos contêm um único ovo cada.

#  _ _ _ _ _ _ _
# |E| |E|E| | |E|
# Binário resultante
# 1011001

#  _ _ _ _ _ _ _
# |1|0|1|1|0|0|1|
# Número decimal no visor
# 89

# Ovos de verdade no galinheiro
# 4

# Exemplo 2
# Sete caixas-ninho individuais dispostas em uma fileira onde apenas o quarto ninho tem um ovo.

#  _ _ _ _ _ _ _
# | | | |E| | | |
# Binário resultante
# 0001000

#  _ _ _ _ _ _ _
# |0|0|0|1|0|0|0|
# Número decimal no visor
# 16

# Ovos de verdade no galinheiro
# 1

# Instruções
# Sua tarefa é contar o número de bits 1 na representação binária de um número.

# Restrições
# Não use a funcionalidade de contagem de bits fornecida pela sua biblioteca padrão! Resolva este problema você mesmo usando outras ferramentas básicas.


def count_eggs(binary_string)
  # Inicializa um contador de ovos
  egg_count = 0

  # Percorre cada caractere da string binária
  binary_string.each_char do |char|
    egg_count += 1 if char == '1'
  end

  # Retorna o número total de ovos
  egg_count
end

def decode_chicken_coop(nest_positions)
  # Converte a lista de posições de ovos em uma string binária
  binary_string = nest_positions.map { |egg| egg ? '1' : '0' }.join

  # Converte o binário para decimal
  decimal_value = binary_string.to_i(2)

  # Conta quantos ovos existem
  egg_count = count_eggs(binary_string)

  # Exibe os resultados
  puts "Representação binária: #{binary_string}"
  puts "Número decimal no visor: #{decimal_value}"
  puts "Número real de ovos: #{egg_count}"
end

# Exemplo 1: ovos nos ninhos (posição verdadeira indica ovo)
example_1 = [true, false, true, true, false, false, true]
decode_chicken_coop(example_1)

# Exemplo 2: apenas um ovo no quarto ninho
example_2 = [false, false, false, true, false, false, false]
decode_chicken_coop(example_2)

