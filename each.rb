# each em Ruby é uma ferramenta poderosa para iterar sobre coleções, como arrays e hashes, de forma simples e eficiente. Ele é amplamente utilizado para realizar operações repetitivas em cada elemento de uma coleção. Vamos entender de maneira prática e profissional:

# O Básico
# O método each percorre cada elemento de uma coleção (array, hash, etc.).

# Ele aceita um bloco de código que será executado para cada elemento.

# Ao contrário de um for, que é mais genérico, o each é mais idiomático e favorecido em Ruby, pois aproveita o paradigma orientado a objetos.

# Sintaxe com Array
# ruby
# fruits = ['maçã', 'banana', 'laranja']

# fruits.each do |fruit|
#   puts "Fruta: #{fruit}"
# end
# O que acontece aqui?

# A variável fruit representa cada elemento do array durante a iteração.

# Para cada elemento, o bloco é executado. Resultado no console:

# Fruta: maçã
# Fruta: banana
# Fruta: laranja

#-------------------------------------------------------------------
# Usando each com Hash
# O each também pode ser usado para iterar sobre hashes, onde tanto a chave quanto o valor estão disponíveis no bloco:

# ruby
# person = { nome: 'Bruno', idade: 25, cidade: 'São Paulo' }

# person.each do |key, value|
#   puts "#{key.capitalize}: #{value}"
# end
# Resultado no console:

# Nome: Bruno
# Idade: 25
# Cidade: São Paulo
# Diferenciando each de Outras Opções
# Por que usar each?: Ele é mais limpo e idiomático em Ruby. Torna o código legível e expressivo.

# Alternativas como map: Use each quando você não quer criar uma nova coleção. Para transformações, map pode ser mais adequado.

# Exemplo com map:

# ruby
# squared_numbers = [1, 2, 3].map { |n| n**2 } # Retorna [1, 4, 9]
# Boas Práticas
# Evite Variáveis Inúteis: Use nomes descritivos para variáveis dentro do bloco. Em vez de |x|, prefira algo como |element|, |fruit|, etc.

# Não Modifique a Coleção Dentro do Bloco: É considerado má prática alterar a coleção que você está iterando enquanto utiliza o each.

# Use Métodos Encadeados Quando Possível: Você pode combinar each com outros métodos, como filtros:

# ruby
# numbers = [1, 2, 3, 4, 5]
# numbers.each { |n| puts n if n.even? }
# # Imprime apenas números pares
# Exemplo Realista
# Imagine que você está processando uma lista de pedidos de uma loja online:

# ruby
# orders = [
#   { cliente: 'Ana', total: 150 },
#   { cliente: 'João', total: 200 },
#   { cliente: 'Maria', total: 100 }
# ]

# orders.each do |order|
#   puts "Cliente: #{order[:cliente]} - Total: R$ #{order[:total]}"
# end
# Saída:

# Cliente: Ana - Total: R$ 150
# Cliente: João - Total: R$ 200
# Cliente: Maria - Total: R$ 100