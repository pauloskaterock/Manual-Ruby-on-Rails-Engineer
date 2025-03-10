# Crie um programa que calcule a média de três notas.

# Definindo as notas dos alunos
nota1 = 5
nota2 = 4
nota3 = 6

# Definindo a função para calcular a média das notas
def calculando_nota(nota1, nota2, nota3)
  # Calculando a média das notas
  media = (nota1 + nota2 + nota3) / 3.0

  # Verificando se a média é maior ou igual a 5
  if media >= 5
    puts "Média: #{media} - Notas satisfatórias."
  else
    puts "Média: #{media} - Notas insatisfatórias."
  end
end

# Chamando a função para calcular a média das notas
calculando_nota(nota1, nota2, nota3)


# Neste código:

# As notas dos alunos são definidas como variáveis (nota1, nota2, nota3).
# A função calculando_nota é definida para calcular a média das notas e determinar se são satisfatórias ou não.
# Dentro da função, a média é calculada somando as três notas e dividindo por 3.0 para garantir que o resultado seja um número decimal.
# É feita uma verificação condicional para determinar se a média é maior ou igual a 5. Se for, exibe a mensagem "Notas satisfatórias"; caso contrário, exibe "Notas insatisfatórias".
# Finalmente, a função é chamada com as notas dos alunos como argumentos para calcular a média e exibir o resultado.




