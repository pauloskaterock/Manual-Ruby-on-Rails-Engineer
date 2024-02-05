# Hashes em Ruby são estruturas de dados semelhantes a dicionários ou mapas, onde cada elemento é 
# composto por um par chave-valor. A chave é única e é usada para acessar o valor correspondente.

# Aqui estão alguns exemplos de hashes em Ruby:

# Declaração básica de um hash:


pessoa = { :nome => "Eustaquio", :idade => 35 }

# Acessando valores do hash:

puts pessoa[:nome] # Imprime: Eustaquio
puts pessoa[:idade] # Imprime: 35

# Adicionando um novo par chave-valor:

pessoa[:cidade] = "São Paulo"
puts pessoa # Imprime: {:nome=>"Eustaquio", :idade=>35, :cidade=>"São Paulo"}

# Removendo uma chave e seu valor:

pessoa.delete(:idade)
puts pessoa # Imprime: {:nome=>"Eustaquio", :cidade=>"São Paulo"}


# Iterando sobre as chaves e valores de um hash:

pessoa.each do |chave, valor|
  puts "Chave: #{chave}, Valor: #{valor}"
end


# Verificando se uma chave existe no hash:

if pessoa.key?(:nome)
  puts "A chave :nome existe no hash."
end


# Hash com símbolos como chaves:

pessoa_simbolos = { nome: "Eustaquio", idade: 35 }
puts pessoa_simbolos # Imprime: {:nome=>"Eustaquio", :idade=>35}

# Hashes são muito úteis em Ruby para armazenar e manipular dados estruturados.