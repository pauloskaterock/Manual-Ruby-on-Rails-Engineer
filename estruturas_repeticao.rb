i = 0
 num = 5

 while i < num do
 puts "Contando".upcase + i.to_s
 i += 1
end
  puts "-----------------------------------------"

  (0..5).each do |i|
    puts "O valor lido foi: ".reverse + i.to_s
   end


   puts "-----------------------------------------"

   ['a','b',3].each do |i|
    puts "O valor lido foi: ".reverse + i.to_s
   end

   puts "-----------------------------------------------------"

# Em Ruby, existem diversas estruturas de repetição para controlar o fluxo do programa. 
# Aqui estão algumas delas com exemplos e explicações:

    # 1. Estrutura while
    # A estrutura while executa um bloco de código enquanto uma condição é verdadeira.
    
   
    counter = 0
    
    while counter < 5
      puts counter
      counter += 1
    end

# Neste exemplo, o bloco de código será executado enquanto counter for menor que 5.
    
    # 2. Estrutura until
    # A estrutura until executa um bloco de código até que uma condição seja verdadeira.
    
  
    counter = 0
    
    until counter >= 5
      puts counter
      counter += 1
    end

# Este exemplo é semelhante ao anterior, mas usando until para 
# verificar quando counter se torna maior ou igual a 5.
    
# 3. Estrutura for
# A estrutura for itera sobre uma coleção de elementos.
    
   
    for i in 1..5
      puts i
    end
    # Neste exemplo, for itera sobre os números de 1 a 5.
    
# 4. Método each
# O método each é uma forma de iterar sobre uma coleção.
    
   
    (1..5).each do |i|
      puts i
    end
# Neste exemplo, each é usado para iterar sobre os números de 1 a 5.

    
# 5. Estrutura times
# A estrutura times executa um bloco de código um número específico de vezes.

    5.times do |i|
      puts i
    end
#Neste exemplo, o bloco de código será executado 5 vezes.
    
    
# 6. Estrutura loop
# A estrutura loop cria um loop infinito que deve ser interrompido explicitamente.
    
    
    counter = 0
    
    loop do
      puts counter
      counter += 1
      break if counter == 5
end

# Neste exemplo, loop é usado junto com break para sair do loop quando counter atinge 5.
# Estas são algumas das estruturas de repetição em Ruby. 
