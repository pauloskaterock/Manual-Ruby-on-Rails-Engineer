# Em Ruby, a função require é usada para carregar e executar um arquivo contendo código Ruby em outro arquivo. Ela é frequentemente usada para incluir bibliotecas e módulos externos em seus programas. Quando você executa require 'nome_do_arquivo', o Ruby procura por esse arquivo em seus diretórios de carregamento (por exemplo, o diretório atual ou os diretórios listados na variável de ambiente $LOAD_PATH). Se o arquivo for encontrado, ele será carregado e seu código será executado.

# Aqui está um exemplo simples para ilustrar como o require funciona:

# Suponha que temos um arquivo chamado saudacao.rb com o seguinte conteúdo:


# saudacao.rb

# def saudacao
#   puts "Olá, mundo!"
# end

# Agora, vamos criar outro arquivo chamado programa.rb, que requer o arquivo saudacao.rb:


# programa.rb

# require './saudacao'

# saudacao
# Neste exemplo, require './saudacao' diz ao Ruby para carregar o arquivo saudacao.rb do diretório atual. Quando você executa programa.rb, o Ruby primeiro carrega saudacao.rb, define o método saudacao, e então chama esse método, imprimindo "Olá, mundo!".

# É importante notar que o Ruby não recarrega um arquivo que já foi requerido na mesma sessão. Se você tentar requerir o mesmo arquivo novamente, o Ruby simplesmente ignorará a segunda chamada.

# Além disso, o require também pode ser usado para carregar módulos e gems (pacotes Ruby). Por exemplo, para carregar o gem json, você pode usar require 'json'.


# require 'json'

# data = '{"name": "John", "age": 30}'
# parsed_data = JSON.parse(data)
# puts parsed_data['name']


# Neste exemplo, estamos usando require 'json' para carregar o módulo JSON, que nos permite analisar 
# uma string JSON em um objeto Ruby.

# Em resumo, require é uma função fundamental em Ruby para carregar código de outros arquivos, módulos e gems,
#  ermitindo a reutilização e modularidade do código.





