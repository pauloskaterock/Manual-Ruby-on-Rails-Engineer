# Como usar matrizes
# Se você quiser ter muitos da mesma coisa, então os arrays são muito úteis.

# Uma matriz é uma coleção de itens em um único local.


# Uma matriz em Ruby é uma estrutura de dados que pode armazenar vários
# elementos, todos do mesmo tipo de dado. Esses elementos podem ser 
# cessados por índices que variam de 0 a (número de elementos - 1), 
# onde 0 é o índice do primeiro elemento.

# Para criar uma matriz em Ruby, você pode usar colchetes [] e 
# separar os elementos com vírgulas.
    
    # Exemplo:
    
    matriz = [1, 2, 3, 4, 5]
    # Neste exemplo, matriz é uma matriz que contém cinco elementos.
    
    # Você também pode criar uma matriz vazia usando colchetes vazios.
    
    # Exemplo:
    
   
    matriz = []

    # Neste exemplo, matriz é uma matriz vazia.
    
    # Para acessar os elementos de uma matriz, 
    # você pode usar o índice do elemento.
    
    # Exemplo:
    
   
    matriz = [1, 2, 3, 4, 5]
    puts matriz[0] # Saída: 1
    puts matriz[1] # Saída: 2
    puts matriz[2] # Saída: 3
    puts matriz[3] # Saída: 4
    puts matriz[4] # Saída: 5

    # Neste exemplo, os elementos da matriz matriz são acessados 
    # usando seus índices.
    
    # Para adicionar elementos ao final de uma matriz, 
    # você pode usar o método push.
    
    # Exemplo:
    
   
    matriz = [1, 2, 3, 4, 5]
    matriz.push(6)
    puts matriz.inspect # Saída: [1, 2, 3, 4, 5, 6]

    # Neste exemplo, o elemento 6 é adicionado ao final da matriz matriz.
    
    # Para remover elementos do final de uma matriz, 
    # você pode usar o método pop.
    
    # Exemplo:
  
    matriz = [1, 2, 3, 4, 5]
    ultimo_elemento = matriz.pop
    puts ultimo_elemento # Saída: 5
    puts matriz.inspect # Saída: [1, 2, 3, 4]


    # Neste exemplo, o último elemento da matriz matriz é removido
    # e armazenado na variável ultimo_elemento. A matriz matriz é 
    # atualizada após a remoção do elemento.
    
    # Além disso, Ruby permite o uso de colchetes para adicionar 
    # elementos a uma matriz, removendo a necessidade de usar os 
    # métodos push e pop.
    
    # Exemplo:

    matriz = [1, 2, 3, 4, 5]
    matriz << 6
    puts matriz.inspect # Saída: [1, 2, 3, 4, 5, 6]


    # Neste exemplo, o elemento 6 é adicionado ao final da matriz
    #  matriz usando os colchetes.
    
    # Lembre-se de que, diferentemente das matrizes em outras 
    # linguagens de programação, as matrizes em Ruby podem 
    # conter elementos de diferentes tipos de dados.
    
    
    
    

[1, 2, 3, 4, 5]

# Esta é uma matriz de inteiros.

# Você pode acessar cada elemento por sua posição.

# Chamamos essa posição de índice.

letters = ['a', 'b', 'c']

letters[0]
# 'a'

letters[1]
# 'b'

letters[2]
# 'c'

# Se você solicitar um índice maior que o tamanho da matriz, obterá um valor nulo.

letters[4]

# nil

# Um valor nulo é Ruby dizendo-lhe:

# "Eu não consigo encontrar o que você quer, então aqui está uma resposta genérica"
# E assim como as cadeias de caracteres, as matrizes têm um conjunto
# de métodos que você pode usar para fazê-las fazer coisas.

letters.size

# 3

# Você pode adicionar novos elementos a uma matriz como esta:

# As matrizes em Ruby são uma ferramenta poderosa e versátil, pois permitem que 
# você armazene e gerencie facilmente uma coleção de elementos. 
# Algumas das principais vantagens de usar matrizes em Ruby incluem:

# Facilidade de criação e manipulação: Matrizes em Ruby são fáceis de criar e manipular. 
# Basta usar colchetes e separar os elementos com vírgulas.
# Flexibilidade: Matrizes em Ruby podem armazenar elementos de diferentes tipos de dados,
# tornando-as adequadas para uma ampla variedade de tarefas.
# Desempenho: As matrizes em Ruby são implementadas de forma eficiente e podem oferecer 
# desempenho rápido em muitos casos.
# Amplamente suportado: As matrizes em Ruby são amplamente suportadas e documentadas, 
# o que torna fácil encontrar recursos e orientações sobre como usá-las.
# Por exemplo, se você deseja criar uma lista de tarefas pendentes, pode usar uma matriz 
# para armazenar essas tarefas:


tarefas = []
tarefas.push("Comprar pães")
tarefas.push("Lavar a roupa")
tarefas.push("Tirar a lixeira")

puts tarefas.inspect # Saída: ["Comprar pães", "Lavar a roupa", "Tirar a lixeira"]

# Neste exemplo, a matriz tarefas é usada para armazenar uma lista de tarefas pendentes.
# Você pode adicionar novas tarefas à lista usando o método push, e listar todas as tarefas usando o método inspect.

