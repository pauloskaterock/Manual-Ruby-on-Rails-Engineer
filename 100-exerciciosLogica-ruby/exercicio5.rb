# Escreva um programa que verifique se um número é par ou ímpar.


# Definindo a função par_impar para verificar se um número é par ou ímpar
def par_impar(numero)
    # Verificando se o número é divisível por 2 sem deixar resto
    if numero % 2 == 0
      # Se o resto da divisão por 2 for zero, o número é par
      puts "O #{numero} é par."
    else
      # Se o resto da divisão por 2 não for zero, o número é ímpar
      puts "O #{numero} é ímpar."
    end
  end
  
  # Definindo o número a ser verificado
  numero = 10
  # Chamando a função par_impar para verificar se o número é par ou ímpar
  par_impar(numero)
  
