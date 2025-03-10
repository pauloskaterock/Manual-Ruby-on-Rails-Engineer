# Faça um programa que leia o raio de um círculo e calcule sua área.


# Faça um programa que leia o raio de um círculo e calcule sua área.


# Definimos um método para calcular a área de um círculo com base no raio
def calcular_area_circulo
    # Solicita ao usuário que insira o raio do círculo
    puts "Digite o raio do círculo:"
    raio = gets.chomp.to_f  # Lê a entrada do usuário e converte para float
  
    # Define a constante PI
    pi = Math::PI
  
    # Calcula a área do círculo usando a fórmula A = πr²
    area = pi * (raio ** 2)
  
    # Exibe a área do círculo
    puts "A área do círculo com raio #{raio} é: #{format("%.2f", area)}"
  end
  
  # Chamamos o método para executar o programa
  calcular_area_circulo



#   Explicação do código:
#     Definição do método:
    
#     Definimos um método chamado calcular_area_circulo que não recebe argumentos.
#     Leitura de entrada do usuário:
    
#     Solicitamos ao usuário que insira o raio do círculo com a mensagem puts "Digite o raio do círculo:".
#     Usamos gets.chomp.to_f para ler a entrada do usuário, remover qualquer nova linha (chomp) e converter a entrada para um número de ponto flutuante (to_f).
#     Definição de PI:
    
#     Definimos a constante pi usando Math::PI, que fornece o valor de π (pi).
#     Cálculo da área:
    
#     Calculamos a área do círculo usando a fórmula matemática 
#     𝐴
#     =
#     𝜋
#     𝑟
#     2
#     A=πr 
#     2
#      , onde r é o raio do círculo.
#     area = pi * (raio ** 2) realiza o cálculo da área.
#     Exibição do resultado:
    
#     Exibimos a área do círculo formatada com duas casas decimais usando puts "A área do círculo com raio #{raio} é: #{format("%.2f", area)}".
#     Execução do método:
    
#     Chamamos o método calcular_area_circulo para executar o programa.  