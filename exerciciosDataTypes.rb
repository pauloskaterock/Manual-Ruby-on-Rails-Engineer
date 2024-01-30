# Declare duas variáveis, uma para armazenar um número inteiro e outra para um número decimal. 
# Em seguida, some os dois valores.

numero_inteiro = 10
numero_decimal = 3.5
soma = numero_inteiro + numero_decimal
print("A soma de #{numero_inteiro} e #{numero_decimal} é: #{soma}")

puts "----------------------------------------------------------------------------"

# String:
# Crie uma variável para armazenar uma mensagem de saudação e adicione o 
# nome de uma pessoa a essa mensagem usando concatenação de strings.

saudacao = "Saudaçoes terraqueos eu venho em paz"
nome = "ET Bilu"
puts  "#{saudacao}, #{nome}"

puts "----------------------------------------------------------------------------"

# Boolean:
# Declare uma variável booleana indicando se está chovendo ou não. 
# Em seguida, imprima uma mensagem informando se é necessário levar um guarda-chuva.

chuva = true

if chuva = true
    puts "Você precisa levar um guarda-chuva!"
    else
        puts  "Não precisa levar um guarda-chuva!"
    end

puts "---------------------------------------------------------------------------"

# Array:
# Crie um array de números inteiros. 
# Adicione um novo número ao array e remova um número existente.

array =  [2,4,6,8]
array << 10   #adiciona 10 no final do array
array.delete(6) #remove o valor 6 do array
puts array.to_s

puts "----------------------------------------------------------------------------------------"

# Hash:
# Crie um hash representando informações sobre uma pessoa (nome, idade, cidade). 
# Imprima cada valor do hash.

hash =  { :nome => 'Bilu', :idade => 35 , :cidade =>'Recife'}
puts "O #{hash[:nome]} mora na #{hash[:cidade]} e tem #{hash[:idade]} anos."

puts "---------------------------------------------------------------------------------------------------"

# Symbol:
# Declare um símbolo representando o estado em que você mora.

estado = :pernambucano
puts estado

puts "----------------------------------------------------------------------------------"

# Nil:
# Crie uma variável e atribua nil a ela. Em seguida, 
# verifique se a variável é nula e imprima uma mensagem correspondente.
nilVar = nil
if nilVar == nil
    puts "Variavel nil"
else
    puts "Não é nulo!"
end

puts "-----------------------------------------------------------------------------------------"

# Range:
# Crie um range que represente números de 1 a 10. 
# Em seguida, imprima todos os números dentro desse range.

range = (1...15)
puts range

puts "-------------------------------------------------------------------------------------------"

# Regexp (Expressões Regulares):
# Crie uma expressão regular que valide um endereço de e-mail simples. 
# Teste-a com alguns exemplos.
expressao_regular = /\d{3}-\d{4}/
puts expressao_regular

puts "-------------------------------------------------------------------------------------------"

# - Crie uma classe `Animal` com variáveis de instância para representar o 
# nome e a idade de um animal. Instancie a classe e imprima os valores.

class Animal
    def initialize(nome, idade)
      @nome = nome
      @idade = idade
    end
  
    def exibir_informacoes
      puts "Nome: #{@nome}"
      puts "Idade: #{@idade} anos"
    end
  end
  
  # Instanciando a classe e atribuindo valores ao nome e idade do animal
  animal = Animal.new("Leão", 5)
  
  # Exibindo as informações do animal
  animal.exibir_informacoes
  
    

        