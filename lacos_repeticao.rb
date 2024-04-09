# While Loop: Executa o bloco de código até que a condição seja falsa.
# Exemplo:


count = 0
while count < 5
 puts "A contagem é: #{count}"
 count += 1
end

# Until Loop: Semelhante ao while loop, executa o bloco de código até que a condição seja verdadeira.
# Exemplo:


count = 0
until count >= 5
 puts "A contagem é: #{count}"
 count += 1
end

# For Loop: Itera sobre uma determinada sequência de elementos (por exemplo, arrays, strings, intervalos)
# e executa o bloco de código para cada elemento.
# Exemplo:


for number in 1..5
 puts "O número é: #{number}"
end

# Each Loop: Itera sobre cada elemento de um array ou hash, executando o bloco de código para cada elemento.
# Exemplo:

numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
 puts "O número é: #{number}"
end

# Times Loop: Executa o bloco de código uma determinada quantidade de vezes.
# Exemplo:


5.times do
 puts "Executando..."
end

# Loop: Itera infinitamente até que seja interrompido explicitamente.
# Exemplo:


loop do
 puts "Executando infinitamente..."
 break if condition == true
end


puts "----------------------------------------------------------------------------------------------"

# Em Ruby, os loops de repetição são semelhantes à maioria das linguagens de programação.
#  Aqui estão alguns exemplos simples de cada tipo de loop de repetição em Ruby:

# 1. while Loop:
# O loop while executa um bloco de código enquanto uma condição for verdadeira.

contador = 0

while contador < 5
  puts "Contagem: #{contador}"
  contador += 1
end

 puts "------------------------------------------------------------------------------------------"

# do..while Loop:
# Embora Ruby não tenha um loop do..while tradicional, 
# você pode simular usando begin..end.

contador = 0

begin
  puts "Contagem: #{contador}"
  contador += 1
end while contador < 5


puts "----------------------------------------------------------------------------------------------"

# for Loop:
#     O loop for itera sobre uma coleção.

for i in 1..5
    puts "Número: #{i}"
  end
  
  puts "------------------------------------------------------------------------------------------------"

#   each Loop:
#   O método each é usado para iterar sobre elementos de uma coleção.

cores = ["vermelho", "azul", "verde"]

cores.each do |cor|
  puts "Cor: #{cor}"
end


puts "-----------------------------------------------------------------------------------------------------"

# times Loop:
# O método times executa um bloco de código um número específico de vezes.

5.times do |i|
    puts "Iteração #{i + 1}"
  end

puts " -----------------------------------------------------------------------------------------------"

# until Loop:
#     O loop until executa um bloco de código enquanto uma condição for falsa.

contador = 0

until contador == 5
  puts "Contagem inversa: #{5 - contador}"
  contador += 1
end


puts "----------------------------------------------------------------------------------------------"

# loop Infinito:
# O loop loop é usado para criar loops infinitos.

contador = 0

loop do
  puts "Iteração infinita: #{contador}"
  contador += 1
  break if contador == 5
end







