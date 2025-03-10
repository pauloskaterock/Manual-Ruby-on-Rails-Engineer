# Crie um programa que leia dois números e exiba o maior deles.

# Definimos um método para ler números do usuário e encontrar o maior deles
def encontrar_maior_numero
    # Solicita ao usuário que insira o primeiro número
    puts "Digite o primeiro número:"
    numero1 = gets.chomp.to_f  # Lê a entrada do usuário e converte para float
  
    # Solicita ao usuário que insira o segundo número
    puts "Digite o segundo número:"
    numero2 = gets.chomp.to_f  # Lê a entrada do usuário e converte para float
  
    # Compara os dois números e exibe o maior
    if numero1 > numero2
      puts "O maior número é: #{numero1}"
    elsif numero2 > numero1
      puts "O maior número é: #{numero2}"
    else
      puts "Os dois números são iguais."
    end
  end
  
  # Chamamos o método para executar o programa
  encontrar_maior_numero


  
#   Explicação do código:
#     Definição do método:
    
#     Definimos um método chamado encontrar_maior_numero que não recebe argumentos.
#     Leitura de entrada do usuário:
    
#     Solicitamos ao usuário que insira o primeiro número com a mensagem puts "Digite o primeiro número:".
#     Usamos gets.chomp.to_f para ler a entrada do usuário, remover qualquer nova linha (chomp) e converter a entrada para um número de ponto flutuante (to_f).
#     Repetição para o segundo número:
    
#     Solicitamos ao usuário que insira o segundo número com a mensagem puts "Digite o segundo número:".
#     Da mesma forma, usamos gets.chomp.to_f para ler e converter a entrada.
#     Comparação dos números:
    
#     Utilizamos uma estrutura condicional (if, elsif, else) para comparar os dois números:
#     if numero1 > numero2: Se o primeiro número for maior, exibimos que o primeiro número é o maior.
#     elsif numero2 > numero1: Se o segundo número for maior, exibimos que o segundo número é o maior.
#     else: Se nenhum dos dois for maior, então os números são iguais, e exibimos essa mensagem.
#     Execução do método:
    
#     Chamamos o método encontrar_maior_numero para executar o programa.