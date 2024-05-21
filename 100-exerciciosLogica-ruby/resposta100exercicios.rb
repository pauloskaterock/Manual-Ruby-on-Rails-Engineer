# respostas para os 100 exercícios de lógica de programação em Ruby:

###############################################################################
puts "Olá, mundo!"
###############################################################################
print "Digite seu nome: "
nome = gets.chomp
puts "Olá, #{nome}!"
###############################################################################
print "Digite o primeiro número: "
num1 = gets.chomp.to_i
print "Digite o segundo número: "
num2 = gets.chomp.to_i
soma = num1 + num2
puts "A soma dos números é: #{soma}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
quadrado = num ** 2
puts "O quadrado do número é: #{quadrado}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
if num % 2 == 0
  puts "#{num} é par."
else
  puts "#{num} é ímpar."
end
###############################################################################
print "Digite a primeira nota: "
nota1 = gets.chomp.to_f
print "Digite a segunda nota: "
nota2 = gets.chomp.to_f
print "Digite a terceira nota: "
nota3 = gets.chomp.to_f
media = (nota1 + nota2 + nota3) / 3
puts "A média das notas é: #{media}"
###############################################################################
print "Digite a temperatura em graus Celsius: "
celsius = gets.chomp.to_f
fahrenheit = (celsius * 9 / 5) + 32
puts "A temperatura em Fahrenheit é: #{fahrenheit}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
if num > 0
  puts "#{num} é positivo."
elsif num < 0
  puts "#{num} é negativo."
else
  puts "#{num} é zero."
end
###############################################################################
print "Digite o primeiro número: "
num1 = gets.chomp.to_i
print "Digite o segundo número: "
num2 = gets.chomp.to_i
if num1 > num2
  puts "#{num1} é maior que #{num2}."
elsif num1 < num2
  puts "#{num2} é maior que #{num1}."
else
  puts "Os números são iguais."
end
###############################################################################
print "Digite o raio do círculo: "
raio = gets.chomp.to_f
area = Math::PI * raio ** 2
puts "A área do círculo é: #{area}"


###############################################################################
(1..10).each do |num|
  puts num
end
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
(1..10).each do |i|
  puts "#{num} x #{i} = #{num * i}"
end
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
fat = 1
(1..num).each do |i|
  fat *= i
end
puts "O fatorial de #{num} é: #{fat}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
if num > 1
  primo = true
  (2..num - 1).each do |i|
    if num % i == 0
      primo = false
      break
    end
  end
  if primo
    puts "#{num} é primo."
  else
    puts "#{num} não é primo."
  end
else
  puts "#{num} não é primo."
end
###############################################################################
print "Digite uma palavra: "
palavra = gets.chomp
puts palavra.reverse
###############################################################################
print "Digite uma palavra ou frase: "
texto = gets.chomp.downcase.gsub(/[^a-z]/, '')
if texto == texto.reverse
  puts "É um palíndromo."
else
  puts "Não é um palíndromo."
end
###############################################################################
print "Digite uma palavra ou frase: "
texto = gets.chomp.downcase
vogais = texto.scan(/[aeiou]/).size
puts "A palavra/frase tem #{vogais} vogais."
###############################################################################
(2..100).step(2) do |num|
  puts num
end
###############################################################################
soma = 0
(1..100).step(2) do |num|
  soma += num
end
puts "A soma dos números ímpares de 1 a 100 é: #{soma}"
###############################################################################
print "Digite o primeiro número: "
num1 = gets.chomp.to_i
print "Digite o segundo número: "
num2 = gets.chomp.to_i
print "Digite o terceiro número: "
num3 = gets.chomp.to_i
max = [num1, num2, num3].max
min = [num1, num2, num3].min
puts "O maior número é #{max} e o menor número é #{min}."
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Lista ordenada: #{lista.sort}"
###############################################################################
def mdc(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

print "Digite o primeiro número: "
num1 = gets.chomp.to_i
print "Digite o segundo número: "
num2 = gets.chomp.to_i
puts "O MDC de #{num1} e #{num2} é: #{mdc(num1, num2)}"
###############################################################################
print "Digite um número decimal: "
decimal = gets.chomp.to_f
puts "O número em binário é: #{decimal.to_i.to_s(2)}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_f)
media = lista.sum / lista.size
puts "A média dos números é: #{media}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
ordenada = lista.sort
if lista == ordenada || lista == ordenada.reverse
  puts "A lista está ordenada."
else
  puts "A lista não está ordenada."
end
###############################################################################
print "Digite uma frase: "
frase = gets.chomp.downcase
print "Digite uma letra: "
letra = gets.chomp.downcase
ocorrencias = frase.count(letra)
puts "A letra '#{letra}' aparece #{ocorrencias} vezes na frase."
###############################################################################
alfabeto = ('a'..'z').to_a
print "Digite uma frase: "
frase = gets.chomp.downcase
if (alfabeto - frase.chars.uniq).empty?
  puts "É um pangrama."
else
  puts "Não é um pangrama."
end
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
if lista.uniq.length != lista.length
  puts "A lista contém duplicatas."
else
  puts "A lista não contém duplicatas."
end
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
unica = lista.uniq
puts "Números únicos: #{unica}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
soma_digitos = num.to_s.chars.map(&:to_i).sum
puts "A soma dos dígitos de #{num} é: #{soma_digitos}"
###############################################################################
print "Digite o ano: "
ano = gets.chomp.to_i
if (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)
  puts "#{ano} é bissexto."
else
  puts "#{ano} não é bissexto."
end
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
pares = lista.select { |num| num.even? }
puts "Números pares: #{pares}"
###############################################################################
print "Digite a primeira nota: "
nota1 = gets.chomp.to_f
print "Digite a segunda nota: "
nota2 = gets.chomp.to_f
print "Digite a terceira nota: "
nota3 = gets.chomp.to_f
media = (nota1 * 2 + nota2 * 3 + nota3 * 5) / 10
puts "A média ponderada é: #{media}"
###############################################################################
require 'prime'
puts "Números primos de 1 a 100: #{Prime.take_while { |p| p <= 100 }}"
###############################################################################
print "Digite uma lista de palavras separadas por espaços: "
palavras = gets.chomp.split
maior = palavras.max_by(&:length)
menor = palavras.min_by(&:length)
puts "Maior palavra: #{maior}"
puts "Menor palavra: #{menor}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
media_movel = lista.each_cons(2).map { |a, b| (a + b) / 2.0 }
puts "Média móvel: #{media_movel}"
###############################################################################
print "Digite um número binário: "
binario = gets.chomp
decimal = binario.to_i(2)
puts "O número em decimal é: #{decimal}"
###############################################################################
print "Digite uma palavra ou frase: "
texto = gets.chomp.downcase.gsub(/[^a-z]/, '')
if texto == texto.reverse
  puts "É um palíndromo."
else
  puts "Não é um palíndromo."
end
###############################################################################
print "Digite a primeira palavra: "
palavra1 = gets.chomp.downcase.chars.sort.join.strip
print "Digite a segunda palavra: "
palavra2 = gets.chomp.downcase.chars.sort.join.strip
if palavra1 == palavra2
  puts "As palavras são anagramas."
else
  puts "As palavras não são anagramas."
end
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
impares = lista.select { |num| num.odd? }
puts "Números ímpares: #{impares}"
###############################################################################
def primos?(num)
  (2..Math.sqrt(num).to_i).each do |i|
    return false if num % i == 0
  end
  true
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
primo = lista.select { |num| primos?(num) }
puts "Números primos: #{primo}"
###############################################################################
termos = 1000000
pi = 0
sinal = 1
(1..termos).step(2) do |n|
  pi += 4.0 / n * sinal
  sinal *= -1
end
puts "O valor de Pi é aproximadamente: #{pi}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
diferencas = lista.each_cons(2).map { |a, b| b - a }
if diferencas.uniq.length == 1
  puts "É uma progressão aritmética."
else
  puts "Não é uma progressão aritmética."
end
###############################################################################
print "Digite um número decimal: "
decimal = gets.chomp.to_i
puts "O número em hexadecimal é: #{decimal.to_s(16)}"
###############################################################################
def media_geometrica(lista)
  multiplicacao = lista.inject(:*)
  media = multiplicacao ** (1.0 / lista.size)
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_f)
puts "A média geométrica é: #{media_geometrica(lista)}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
razao = lista.each_cons(2).map { |a, b| b.to_f / a }
if razao.uniq.length == 1
  puts "É uma progressão geométrica."
else
  puts "Não é uma progressão geométrica."
end
###############################################################################
print "Digite uma palavra ou frase: "
texto = gets.chomp.downcase.gsub(/[^a-z]/, '')
if texto == texto.chars.uniq.join
  puts "É um isograma."
else
  puts "Não é um isograma."
end
###############################################################################
def fatorial(num)
  if num == 0 || num == 1
    return 1
  else
    return num * fatorial(num - 1)
  end
end

print "Digite um número: "
num = gets.chomp.to_i
puts "O fatorial de #{num} é: #{fatorial(num)}"
###############################################################################
def fibonacci?(num)
  phi = (1 + Math.sqrt(5)) / 2
  fib = ((phi ** num) - ((-phi) ** -num)) / Math.sqrt(5)
  fib.to_i == fib
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
fib = lista.select { |num| fibonacci?(num) }
puts "Números da sequência Fibonacci: #{fib}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
divisores = (1..num).select { |n| num % n == 0 }
puts "Os divisores de #{num} são: #{divisores}"
###############################################################################
def mediana(lista)
  lista.sort!
  tamanho = lista.size
  if tamanho.odd?
    return lista[tamanho / 2]
  else
    return (lista[tamanho / 2 - 1] + lista[tamanho / 2]) / 2.0
  end
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_f)
puts "A mediana é: #{mediana(lista)}"
###############################################################################
alfabeto = ('a'..'z').to_a
print "Digite uma frase: "
frase = gets.chomp.downcase.gsub(/[^a-z]/, '')
if (alfabeto - frase.chars.uniq).empty?
  puts "É um pangrama."
else
  puts "Não é um pangrama."
end
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
restos = lista.each_cons(2).map { |a, b| a % b }
puts "Os restos das divisões são: #{restos}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
soma_pares = lista.select(&:even?).sum
puts "A soma dos números pares é: #{soma_pares}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
fatores = lista.map { |num| (1..num).select { |n| num % n == 0 } }
puts "Os fatores de cada número são: #{fatores}"
###############################################################################
def soma_divisores(num)
  (1..num).select { |n| num % n == 0 }.sum
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
soma = lista.map { |num| soma_divisores(num) }
puts "As somas dos divisores de cada número são: #{soma}"
###############################################################################
print "Digite um número: "
num = gets.chomp.to_i
binario = num.to_s(2)
puts "O número em binário é: #{binario}"
###############################################################################
def fatorial_duplo(num)
  if num == 0 || num == 1
    return 1
  else
    return num * fatorial_duplo(num - 2)
  end
end

print "Digite um número: "
num = gets.chomp.to_i
puts "O fatorial duplo de #{num} é: #{fatorial_duplo(num)}"
###############################################################################
def primo?(num)
  return false if num < 2
  (2..Math.sqrt(num).to_i).none? { |i| num % i == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
primos = lista.select { |num| primo?(num) }
puts "Números primos: #{primos}"
###############################################################################
def soma_digitos_fatorial(num)
  fatorial = (1..num).inject(:*)
  soma = fatorial.to_s.chars.map(&:to_i).sum
end

print "Digite um número: "
num = gets.chomp.to_i
puts "A soma dos dígitos do fatorial de #{num} é: #{soma_digitos_fatorial(num)}"
###############################################################################
def soma_digitos_quadrado(num)
  quadrado = num ** 2
  soma = quadrado.to_s.chars.map(&:to_i).sum
end

print "Digite um número: "
num = gets.chomp.to_i
puts "A soma dos dígitos do quadrado de #{num} é: #{soma_digitos_quadrado(num)}"
###############################################################################
def colatz(num)
  sequencia = [num]
  while num != 1
    if num.even?
      num /= 2
    else
      num = num * 3 + 1
    end
    sequencia << num
  end
  return sequencia
end

print "Digite um número: "
num = gets.chomp.to_i
puts "Sequência de Collatz: #{colatz(num)}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
produto = lista.inject(:*)
puts "O produto dos números é: #{produto}"
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
maior = lista.max
posicao = lista.index(maior)
puts "O maior número é #{maior} e está na posição #{posicao}."
###############################################################################
print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
tamanho = lista.size
lista_invertida = []
tamanho.times { lista_invertida << lista.pop }
puts "Lista invertida: #{lista_invertida}"
###############################################################################
def coeficiente_binomial(n, k)
  return 1 if k == 0 || k == n
  coeficiente_binomial(n - 1, k - 1) + coeficiente_binomial(n - 1, k)
end

print "Digite o valor de n: "
n = gets.chomp.to_i
print "Digite o valor de k: "
k = gets.chomp.to_i
puts "O coeficiente binomial de #{n} sobre #{k} é: #{coeficiente_binomial(n, k)}"
###############################################################################
def soma_termos_pa(a1, n, r)
  n * (a1 + a1 + (n - 1) * r) / 2
end

print "Digite o primeiro termo da PA: "
a1 = gets.chomp.to_i
print "Digite o número de termos da PA: "
n = gets.chomp.to_i
print "Digite a razão da PA: "
r = gets.chomp.to_i
puts "A soma dos termos da PA é: #{soma_termos_pa(a1, n, r)}"
###############################################################################
def lipograma_perfeito?(texto)
  alfabeto = ('a'..'z').to_a
  texto.downcase!
  alfabeto.none? { |letra| texto.include?(letra) }
end

print "Digite um texto: "
texto = gets.chomp
if lipograma_perfeito?(texto)
  puts "É um lipograma perfeito."
else
  puts "Não é um lipograma perfeito."
end
###############################################################################
def multiplos_5(lista)
  lista.select { |num| num % 5 == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Múltiplos de 5: #{multiplos_5(lista)}"
###############################################################################
def pangrama_perfeito?(texto)
  alfabeto = ('a'..'z').to_a
  texto.downcase!
  alfabeto.all? { |letra| texto.include?(letra) }
end

print "Digite um texto: "
texto = gets.chomp
if pangrama_perfeito?(texto)
  puts "É um pangrama perfeito."
else
  puts "Não é um pangrama perfeito."
end
###############################################################################
def multiplos_7(lista)
  lista.select { |num| num % 7 == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Múltiplos de 7: #{multiplos_7(lista)}"
###############################################################################
def soma_termos_pg(a1, n, q)
  a1 * (q**n - 1) / (q - 1)
end

print "Digite o primeiro termo da PG: "
a1 = gets.chomp.to_i
print "Digite o número de termos da PG: "
n = gets.chomp.to_i
print "Digite a razão da PG: "
q = gets.chomp.to_i
puts "A soma dos termos da PG é: #{soma_termos_pg(a1, n, q)}"
###############################################################################
def vogais(texto)
  texto.downcase.scan(/[aeiou]/).size
end

print "Digite um texto: "
texto = gets.chomp
puts "Número de vogais: #{vogais(texto)}"
###############################################################################
def palindromo?(texto)
  texto.downcase!
  texto == texto.reverse
end

print "Digite um texto: "
texto = gets.chomp
if palindromo?(texto)
  puts "É um palíndromo."
else
  puts "Não é um palíndromo."
end
###############################################################################
def vogais_consoantes(texto)
  vogais = texto.downcase.scan(/[aeiou]/).size
  consoantes = texto.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).size
  [vogais, consoantes]
end

print "Digite um texto: "
texto = gets.chomp
resultados = vogais_consoantes(texto)
puts "Número de vogais: #{resultados[0]}"
puts "Número de consoantes: #{resultados[1]}"
###############################################################################
def multiplos_3(lista)
  lista.select { |num| num % 3 == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Múltiplos de 3: #{multiplos_3(lista)}"
###############################################################################
def palindromo_perfeito?(texto)
  texto.downcase!
  texto.gsub!(/[^a-z]/, '')
  texto == texto.reverse
end

print "Digite um texto: "
texto = gets.chomp
if palindromo_perfeito?(texto)
  puts "É um palíndromo perfeito."
else
  puts "Não é um palíndromo perfeito."
end
###############################################################################
def media_lista(lista)
  lista.sum / lista.size.to_f
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "A média dos números é: #{media_lista(lista)}"
###############################################################################
def multiplos_4(lista)
  lista.select { |num| num % 4 == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Múltiplos de 4: #{multiplos_4(lista)}"
###############################################################################
def divisores_primos(num)
  divisores = (1..num).select { |n| num % n == 0 }
  divisores.select { |d| (2..Math.sqrt(d).to_i).none? { |i| d % i == 0 } }
end

print "Digite um número: "
num = gets.chomp.to_i
puts "Divisores primos de #{num}: #{divisores_primos(num)}"
###############################################################################
def soma_quadrados(lista)
  lista.map { |num| num ** 2 }.sum
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "A soma dos quadrados dos números é: #{soma_quadrados(lista)}"
###############################################################################
def digitos(num)
  num.to_s.chars.map(&:to_i).uniq.size
end

print "Digite um número: "
num = gets.chomp.to_i
puts "Número de dígitos diferentes: #{digitos(num)}"
###############################################################################
def soma_impares(lista)
  lista.select(&:odd?).sum
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "A soma dos números ímpares é: #{soma_impares(lista)}"
###############################################################################
def media_ponderada(lista_notas, lista_pesos)
  somatorio = lista_notas.zip(lista_pesos).map { |nota, peso| nota * peso }.sum
  pesos = lista_pesos.sum
  somatorio / pesos.to_f
end

print "Digite as notas separadas por espaços: "
notas = gets.chomp.split.map(&:to_f)
print "Digite os pesos das notas separados por espaços: "
pesos = gets.chomp.split.map(&:to_f)
puts "A média ponderada é: #{media_ponderada(notas, pesos)}"
###############################################################################
def soma_casas_decimais(num)
  num.to_s.chars.drop(2).map(&:to_i).sum
end

print "Digite um número decimal: "
num = gets.chomp.to_f
puts "A soma das casas decimais é: #{soma_casas_decimais(num)}"
###############################################################################
def soma_multiplos(lista, num)
  lista.select { |n| n % num == 0 }.sum
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
print "Digite o número: "
num = gets.chomp.to_i
puts "A soma dos múltiplos de #{num} é: #{soma_multiplos(lista, num)}"
###############################################################################
def soma_primos(lista)
  lista.select { |num| Prime.prime?(num) }.sum
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "A soma dos números primos é: #{soma_primos(lista)}"
###############################################################################
def produto_digitos(num)
  num.to_s.chars.map(&:to_i).inject(:*)
end

print "Digite um número: "
num = gets.chomp.to_i
puts "O produto dos seus dígitos é: #{produto_digitos(num)}"
###############################################################################
def quantidade_numeros_primos(lista)
  lista.count { |num| Prime.prime?(num) }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Quantidade de números primos: #{quantidade_numeros_primos(lista)}"
###############################################################################
def quantidade_pares(lista)
  lista.count(&:even?)
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Quantidade de números pares: #{quantidade_pares(lista)}"
###############################################################################
def quantidade_impares(lista)
  lista.count(&:odd?)
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "Quantidade de números ímpares: #{quantidade_impares(lista)}"
###############################################################################
def quantidade_multiplos(lista, num)
  lista.count { |n| n % num == 0 }
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
print "Digite o número: "
num = gets.chomp.to_i
puts "Quantidade de múltiplos de #{num}: #{quantidade_multiplos(lista, num)}"
###############################################################################
def quantidade_digitos(num)
  num.to_s.chars.size
end

print "Digite um número: "
num = gets.chomp.to_i
puts "Quantidade de dígitos: #{quantidade_digitos(num)}"
###############################################################################
def quantidade_casas_decimais(num)
  num.to_s.chars.drop(2).size
end

print "Digite um número decimal: "
num = gets.chomp.to_f
puts "Quantidade de casas decimais: #{quantidade_casas_decimais(num)}"
###############################################################################
def soma_casas_decimais(num)
  num.to_s.chars.drop(2).map(&:to_i).sum
end

print "Digite um número decimal: "
num = gets.chomp.to_f
puts "A soma das casas decimais é: #{soma_casas_decimais(num)}"
###############################################################################
def soma_digitos_quadrado(num)
  quadrado = num ** 2
  soma = quadrado.to_s.chars.map(&:to_i).sum
end

print "Digite um número: "
num = gets.chomp.to_i
puts "A soma dos dígitos do quadrado de #{num} é: #{soma_digitos_quadrado(num)}"
###############################################################################
def quantidade_numeros(lista, num)
  lista.count(num)
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
print "Digite o número: "
num = gets.chomp.to_i
puts "Quantidade de vezes que #{num} aparece na lista: #{quantidade_numeros(lista, num)}"
###############################################################################
def soma_digitos_fatorial(num)
  fatorial = (1..num).inject(:*)
  soma = fatorial.to_s.chars.map(&:to_i).sum
end

print "Digite um número: "
num = gets.chomp.to_i
puts "A soma dos dígitos do fatorial de #{num} é: #{soma_digitos_fatorial(num)}"
###############################################################################
def maior_numero(lista)
  lista.max
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "O maior número é: #{maior_numero(lista)}"
###############################################################################
def menor_numero(lista)
  lista.min
end

print "Digite uma lista de números separados por espaços: "
lista = gets.chomp.split.map(&:to_i)
puts "O menor número é: #{menor_numero(lista)}"