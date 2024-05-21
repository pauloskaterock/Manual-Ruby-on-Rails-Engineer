# Escreva um programa que verifique se um número é positivo, negativo ou zero.



# Definimos um método chamado verificar_numero que recebe um número como argumento

def verificar_numero(numero)
  # Verificamos se o número é maior que zero
  if numero > 0
    puts "O número #{numero} é positivo."
  # Verificamos se o número é menor que zero
  elsif numero < 0
    puts "O número #{numero} é negativo."
  # Se o número não for maior nem menor que zero, então é zero
  else
    puts "O número é zero."
  end
end

# Definimos alguns exemplos de números para testar o método
numeros_para_testar = [10, -5, 0]

# Iteramos sobre cada número no array e chamamos o método verificar_numero

numeros_para_testar.each do |numero|
  verificar_numero(numero)
end

#   Explicação do código:
#     Definição do método:
  
#     Definimos um método chamado verificar_numero que aceita um argumento numero.
#     Estrutura condicional:
  
#     Dentro do método, utilizamos uma estrutura condicional (if, elsif, else) para verificar se o número é positivo, negativo ou zero.
#     if numero > 0: Se o número for maior que zero, imprimimos que o número é positivo.
#     elsif numero < 0: Se o número for menor que zero, imprimimos que o número é negativo.
#     else: Se o número não for maior nem menor que zero, então ele é zero, e imprimimos que o número é zero.
#     Testando o método:
  
#     Criamos um array numeros_para_testar que contém alguns números para testar o método.
#     Usamos um loop each para iterar sobre cada número no array e chamamos o método verificar_numero para cada um deles.
  
