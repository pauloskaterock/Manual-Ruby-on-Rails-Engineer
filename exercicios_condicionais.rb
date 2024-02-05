# 1. Condicionais:
# 1.1. Crie uma condição que verifique se um número é positivo, negativo ou zero.


numero = -5

if numero > 0
  puts "O número é positivo."
elsif numero < 0
  puts "O número é negativo."
else
  puts "O número é zero."
end

# 1.2. Escreva uma condicional para determinar se um ano é bissexto ou não.

# Para determinar se um ano é bissexto ou não, você pode utilizar a seguinte lógica. 
# Um ano é bissexto se for divisível por 4, exceto anos que são divisíveis por 100, a 
# menos que sejam divisíveis por 400. Aqui está um exemplo em Ruby:

# Defina o ano
ano = 2024

# Verifique se o ano é bissexto
if (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)
  puts "#{ano} é um ano bissexto."
else
  puts "#{ano} não é um ano bissexto."
end

# Neste exemplo:

# ano % 4 == 0: Verifica se o ano é divisível por 4.
# ano % 100 != 0: Garante que o ano não seja divisível por 100, a menos que...
# ano % 400 == 0: O ano seja divisível por 400.
# Se qualquer uma dessas condições for verdadeira, o ano é bissexto.


# -----------------------------------------------------------------------------

# 2. Loops:
# 2.1. Utilize um loop para imprimir os números de 1 a 10.

for i in 1..10
    puts "Número: #{i}"
end

# 2.2. Crie um loop que imprima os números pares de 2 a 20.

# Loop que imprime os números pares de 2 a 20
for numero in 2..20
    if numero.even?
      puts numero
    end
end

# Outra forma com o uso de um loop while:

# Loop que imprime os números pares de 2 a 20 usando while
numero = 2

while numero <= 20
  puts numero
  numero += 2
end

# ----------------------------------------------------------------------

# 3. Arrays:
# 3.1. Crie um array de strings com nomes de frutas. Imprima cada fruta em uma linha.

arrays = ["maça", "uva", "banana" , "laranja"]
puts  arrays.join("\n")

# 3.2. Dada uma array de números, crie um novo array que contenha apenas os números pares.

numeros_pares = [4,6,8,9,10]
novos_numeros_pares = numeros_pares.select {|x| x.even?}
puts novos_numeros_pares.join(", ")

# # --------------------------------------------------------------------------------

# 4. Hashes:
# 4.1. Crie um hash representando informações sobre uma pessoa (nome, idade, cidade). Imprima cada chave e valor.

pessoa = { :nome => "Eustaquio", :idade => 35, :cidade => "maua" }

# Acessando valores do hash:

puts pessoa[:nome] # Imprime: Eustaquio
puts pessoa[:idade] # Imprime: 35]
puts pessoa[:cidade]

# 4.2. Dado um hash de produtos e seus preços, calcule o total dos preços.

# Hash de produtos e preços

produtos_precos = {
    "produto_A" => 10.50,
    "produto_B" => 25.75,
    "produto_C" => 8.99
  }
  
  # Inicialize uma variável para armazenar o total
  total = 0.0
  
  # Calcule o total dos preços
  produtos_precos.each do |produto, preco|
    total += preco
  end
  
  # Exiba o total
puts "O total dos preços é: R$ #{total.round(2)}"

# ---------------------------------------------------------------------------

# 5. Strings:
# 5.1. Dada uma string, conte o número de vogais.

string = "numeros booleanos"
vogais = ['a', 'e', 'i', 'o', 'u']
contador = 0
string.downcase.split("").each do |letra|
  if vogais.include?(letra)
    contador += 1
  end
end
puts "#{string} possui #{contador} vogal(es)."



puts "Outtro exemplo-------------------------------------------------------------------"

# Dada uma string
minha_string = "Ruby é uma linguagem de programação"

# Inicialize uma variável para contar as vogais
numero_vogais = 0

# Itere sobre cada caractere da string
minha_string.downcase.each_char do |caractere|
  if "aeiou".include?(caractere)
    numero_vogais += 1
  end
end

# Exiba o número de vogais
puts "O número de vogais na string é: #{numero_vogais}"

# Neste exemplo:

# minha_string.downcase converte todos os caracteres da string para minúsculas 
# para tornar a contagem de vogais case-insensitive.
# each_char itera sobre cada caractere da string.
# A condição if "aeiou".include?(caractere) verifica se o caractere é uma vogal.
# Se for, incrementamos a variável numero_vogais.
# Você pode ajustar o valor de minha_string para testar diferentes casos.


# 5.2. Inverta uma string sem usar métodos prontos como reverse.

# Dada uma string
minha_string = "Ruby é incrível"

# Inicialize uma string vazia para armazenar a string invertida
string_invertida = ""

# Itere sobre cada caractere da string de trás para frente

(minha_string.length - 1).downto(0) do |indice|
  string_invertida += minha_string[indice]
end

# Exiba a string invertida
puts "String original: #{minha_string}"
puts "String invertida: #{string_invertida}"

# Neste exemplo:

# minha_string.length - 1 obtém o índice do último caractere da string.
# downto(0) cria um loop de trás para frente, começando do índice do último caractere até 0.
# minha_string[indice] obtém cada caractere da string no índice correspondente.
# Concatenamos os caracteres para construir a string invertida.
# Isso produzirá a string original e sua versão invertida. 
# Você pode adaptar este exemplo conforme necessário para testar diferentes strings.

# ----------------------------------------------------------------------------------------

# 6. Métodos:
# 6.1. Crie um método que receba um número e retorne "positivo" se for maior que zero, "negativo"
#  se for menor que zero, e "zero" se for igual a zero.

# Defina o método
def verificar_sinal(numero)
    if numero > 0
      return "positivo"
    elsif numero < 0
      return "negativo"
    else
      return "zero"
    end
  end
  
  # Teste o método com diferentes valores
  puts verificar_sinal(5)    # Saída: positivo
  puts verificar_sinal(-3)   # Saída: negativo
  puts verificar_sinal(0)    # Saída: zero

#   Neste exemplo, o método verificar_sinal recebe um número como argumento
#    e retorna uma string indicando se é positivo, negativo ou zero. 
#    Você pode chamar esse método com diferentes valores para testar seu funcionamento.
  
#   Lembre-se de que em Ruby, o valor da última expressão avaliada em um 
#   método é automaticamente retornado, então a palavra-chave return é 
#   opcional, mas pode ser usada para tornar o código mais explícito.

# 6.2. Escreva um método que receba uma string e retorne a mesma string, mas com as palavras em ordem reversa.

# Defina o método
def inverter_ordem_palavras(frase)
    palavras = frase.split
    frase_invertida = palavras.reverse.join(" ")
    return frase_invertida
  end
  
  # Teste o método com uma string
  frase_original = "Ruby é uma linguagem de programação"
  frase_invertida = inverter_ordem_palavras(frase_original)
  
  puts "Frase original: #{frase_original}"
  puts "Frase invertida: #{frase_invertida}"
  
#   Neste exemplo:
  
#   O método inverter_ordem_palavras recebe uma string frase.
#   frase.split divide a string em um array de palavras.
#   palavras.reverse inverte a ordem das palavras.
#   join(" ") junta as palavras novamente em uma string, separadas por espaços.
#   Você pode chamar esse método com diferentes strings para testar sua funcionalidade. 
#   Lembre-se de que este exemplo considera palavras separadas por espaços. 
#   Se a pontuação estiver presente, pode ser necessário ajustar a lógica conforme necessário.

  
