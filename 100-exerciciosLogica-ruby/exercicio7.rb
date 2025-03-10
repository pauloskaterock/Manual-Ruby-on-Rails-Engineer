# Faça um programa que converta graus Celsius para Fahrenheit.


puts "convertendo celsius para fahrenheit"

def celsius_para_fahrenheit(celsius)
    # A fórmula de conversão de Celsius para Fahrenheit é: F = (C × 9/5) + 32
    fahrenheit = (celsius * 9/5) + 32
    return fahrenheit  # Retorna a temperatura em Fahrenheit
  end
  
  # Defina a temperatura em Celsius que você deseja converter
  temperatura_celsius = 20
  
  # Chame a função para converter a temperatura de Celsius para Fahrenheit
  temperatura_fahrenheit = celsius_para_fahrenheit(temperatura_celsius)
  
  # Imprima a temperatura convertida
  puts "#{temperatura_celsius} graus Celsius equivalem a #{temperatura_fahrenheit} graus Fahrenheit."

  
# Definimos uma função chamada celsius_para_fahrenheit que recebe a temperatura em Celsius como argumento.

# Dentro da função, aplicamos a fórmula de conversão de Celsius para Fahrenheit: F = (C × 9/5) + 32, onde C é a temperatura em Celsius e F é a temperatura em Fahrenheit.

# Retornamos o valor da temperatura em Fahrenheit após a conversão.

# Definimos a temperatura em Celsius que desejamos converter, neste caso, 20 graus Celsius.

# Chamamos a função celsius_para_fahrenheit com a temperatura em Celsius como argumento e armazenamos o resultado na variável temperatura_fahrenheit.

# Imprimimos a temperatura original em Celsius e sua correspondente temperatura em Fahrenheit, usando a função puts.

