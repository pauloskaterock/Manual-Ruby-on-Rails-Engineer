# Variáveis em Ruby são contêineres que armazenam informações ou valores. 
# Elas são fundamentais em qualquer linguagem de programação, permitindo que 
# você armazene, manipule e recupere dados durante a execução do seu programa. 

# ----------------------------------------------------------------------
puts "Exercicios Variaveis"

# Variáveis Simples:

# 1-Declare uma variável chamada idade e atribua um valor numérico a ela.
# 2-Declare uma variável chamada nome e atribua um valor string a ela.
# 3-Declare uma variável chamada saldo e atribua um valor decimal a ela.

idade = 35 #1
puts idade
puts idade.class


nome = "PH" # 2
puts nome
puts nome.class

saldo = 13.00 #3
puts saldo
puts saldo.class

puts "----------------------------------------------"

# Interpolação de Strings:

# Crie uma variável cidade e atribua um nome de cidade a ela. 
# Em seguida, imprima uma mensagem utilizando a interpolação de strings.

cidade = "Maua"
mensagem = "Eu nasci na cidade de #{cidade}"
puts mensagem

puts "------------------------------------------------"

# Operações com Variáveis:

# Declare duas variáveis numéricas e realize as operações de 
# adição, subtração, multiplicação e divisão entre elas.

number1 = 2
number2 = 5
somar = number1 + number2
puts "O resultado da soma é #{somar}"

number1 = 2
number2 = 5
somar = number1 - number2
puts "O resultado da soma é #{somar}"

number1 = 2
number2 = 5
somar = number1 * number2
puts "O resultado da soma é #{somar}"

number1 = 10
number2 = 2
somar = number1 / number2
puts "O resultado da soma é #{somar}"

puts "-----------------------------------------------------"

# Mudança de Valores:

# Crie uma variável contador e inicialize com 0. 
# Incremente o valor do contador em 1 e imprima o resultado.

contador = 0
contador += 3
puts "O valor do contador é: #{contador}"

# Crie uma variável chamada idade e inicialize com 25. 
# Incremente o valor da idade em 5 unidades e imprima o resultado.

 idade_cont = 25
 idade_cont += 5
 puts "A idade é: #{idade_cont} anos."

#  Declare uma variável chamada numero_de_alunos e atribua 50 a ela. 
#  Em seguida, reduza o número de alunos em 10 unidades e imprima o resultado.

numero_de_alunos = 50
numero_de_alunos -= 10
puts "#{numero_de_alunos} aluno(s) ainda estão cadastrados no sistema."

# Crie uma variável chamada preco_do_produto e atribua 150.99 a ela. 
# Duplique o preço do produto e imprima o resultado.

preco_do_produto = 150.99
preco_do_produto *= 2
puts "O preço do produto é R$#{preco_do_produto}. O preço duplicado é R$#{preco_do_produto/2}"

puts "--------------------------------------------------------------------------"

# Variáveis de Instância:

# Crie uma classe chamada Pessoa com uma variável de instância nome. 
# Instancie a classe e atribua um nome à variável nome.

class Pessoa
    def initialize(nome)
      @nome = nome
    end
  
    def obter_nome
      @nome
    end
end
  
  # Instanciando a classe e atribuindo um nome à variável nome
  pessoa = Pessoa.new("João")
  
  # Obtendo e imprimindo o nome
  puts "O nome da pessoa é: #{pessoa.obter_nome}"

# Crie uma classe chamada Carro com uma variável de instância chamada modelo. 
# Instancie a classe e atribua um modelo à variável modelo.

class Carro 
    def initialize(modelo)
        @modelo = modelo
    end
    def carro_modelo
        @modelo
        
    end

end

carro = Carro.new("corsa")
puts "O carro é: #{carro.carro_modelo} "

puts "-------------------------------------------------------------------------"

# Declare uma variável local chamada ano_nascimento e atribua o ano 
# de nascimento de uma pessoa. Em seguida, crie uma variável de 
# instância chamada idade dentro da classe Pessoa que calcula a 
# idade com base no ano atual.

class Pessoa
  def initialize(ano_nascimento)
    @ano_nascimento = ano_nascimento
    calcular_idade
  end

  def calcular_idade
    @idade = Time.now.year - @ano_nascimento
  end

  def obter_idade
    @idade
  end
end

# Exemplo de utilização
ano_nascimento = 1990
pessoa = Pessoa.new(ano_nascimento)

puts "A idade da pessoa é: #{pessoa.obter_idade}"

puts  "-------------------------------------------------------------------------"

# Crie uma variável global chamada $variavel_global e atribua um valor a ela. 
# Em seguida, imprima o valor dessa variável.

$variavel_global = "Eu sou uma variável global!"
puts "$variavel_global: #{$variavel_global}"

puts "---------------------------------------------------------------------------"

# Declare uma constante chamada TAXA_CONVERSAO e atribua o valor 5.0 a ela. 
# Em seguida, crie uma variável chamada dolar e atribua um valor em reais a ela. 
# Converta o valor para dólares usando a constante e imprima o resultado.

TAXA_CONVERSAO = 5.0 
dolar = 234567890
conversao = dolar / TAXA_CONVERSAO
puts "Valor em Dólar: R$#{dolar} = USD##"

puts  "------------------------------------------------------------------------------"

# Crie uma variável chamada fruta e atribua o nome de uma fruta a ela. 
# Use uma estrutura de controle para verificar se a 
# fruta é "banana". Se for, imprima "É uma banana!", caso contrário, imprima "Não é uma banana.".

fruta = "maça"
if fruta  == "banana"
  puts  "É uma banana!"
else 
  puts  "Não é uma banana."
end

puts "-------------------------------------------------------------------------------\n\n"

# Crie uma classe chamada ContaBancaria com variáveis de instância saldo e titular. 
# Instancie a classe e atribua valores ao saldo e titular.

class ContaBancaria
  def initialize(saldo, titular)
    @saldo = saldo
    @titular =  titular

    
  end
  def exibir_informacoes
    puts "Titular: #{@titular}"
    puts "Saldo: #{@saldo} reais"
  end
end

# Instanciando a classe e atribuindo valores ao saldo e titular
conta = ContaBancaria.new(1000.0, "João Silva")

# Exibindo as informações da conta
conta.exibir_informacoes

puts "------------------------------------------------------------------------------"

# Declare uma variável local chamada numero1 e atribua um número. 
# Em seguida, declare outra variável local chamada numero2 e atribua outro número. 
# Troque os valores dessas variáveis sem usar uma variável temporária.

numbero1 =  5
numero2 = 7
numbero1 , numero2 = numero2, numbero1 # troca diretamente o valor das duas variáveis
puts "\nNumero 1: #{numbero1}\nNumero 2: #{numero2}"

puts "-------------------------------------------------------------------------------"

# Crie uma variável string chamada mensagem e atribua uma mensagem longa a ela. 
# Em seguida, imprima apenas os primeiros 20 caracteres da mensagem.

mensagem = "Eu sou um estudante muito dedicado e trabalhador, tenho muita vontade de aprender muitas coisas novas."
mensagem = "Eu sou uma pessoa muito legal e tenho muita coisa para dizer!"
print mensagem.reverse[0..19] + "\n"

puts "-------------------------------------------------------------------------"

# Declare uma variável booleana chamada temperatura_alta e atribua um valor a ela. 
# Use uma estrutura de controle para imprimir "Usar protetor solar" 
# se a temperatura estiver alta (verdadeiro) e "Levar um agasalho" 
# se a temperatura estiver baixa (falso).
  
temperatura_alta = true
if temperatura_alta == true
  puts "Usar protetor solar."
else temperatura_alta == false
  puts "Levar um agasalho."
end

puts "-----------------------------------------------------------------------"

# Crie uma classe chamada Livro com variáveis de instância titulo e autor. 
# Instancie a classe e atribua valores ao título e autor.

class Livro
  attr_accessor :titulo, :autor
end
livro1 = Livro.new
livro1.titulo = "O Alquimista"
livro1.autor = "Paulo Coelho"
puts livro1.titulo + ", escrito por " + livro1.autor

puts "-----------------------------------------------------------"

class Livro
  def initialize(titulo, autor)
    @titulo = titulo
    @autor = autor
  end

  def exibir_informacoes
    puts "Título: #{@titulo}"
    puts "Autor: #{@autor}"
  end
end

# Instanciando a classe e atribuindo valores ao título e autor
livro = Livro.new("Aventuras de Ruby", "Maria Souza")

# Exibindo as informações do livro
livro.exibir_informacoes






