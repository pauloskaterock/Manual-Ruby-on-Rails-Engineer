# Symbols (Símbolos)
# Símbolos são palavras que parecem variáveis. Novamente, elas 
# podem conter letras, dígitos e travessões. Mas elas começam com 
# dois pontos.

:a, :b, ou :ponce_de_leon #são exemplos.

# Símbolos são strings leves. Geralmente, símbolos são usados em 
# situações em que você precisa de uma string mas não vai imprimi-la na tela.
# Você pode dizer que um símbolo é pouco mais digerível para o 
# computador. É como um anti-ácido. Os dois pontos indicam as 
# bolhas saindo do estômago do seu computador enquanto ele 
# digere o símbolo. Ah. Doce, doce alívio.

puts "----------------------------------------------------------------------------"


# Em Ruby, um Symbol é uma instância única e imutável de uma classe especial,
# frequentemente usado para representar identificadores, nomes e chaves em um
# contexto onde a mutabilidade não é necessária. Aqui estão alguns exemplos de
# como os símbolos são usados em Ruby:

1. Criando Símbolos:

# Criando um símbolo
simbolo = :exemplo

# Símbolos podem conter caracteres especiais e números
simbolo_especial = :"com espaco e !@#$%^&*() números"

# ----------------------------------------------------------------------------

2. Símbolos vs. Strings:
Símbolos são frequentemente usados para representar identificadores e chaves em hashes:


# Usando strings como chaves em um hash
hash_com_strings = {"nome" => "Alice", "idade" => 30}

# Usando símbolos como chaves em um hash (notação mais comum)
hash_com_simbolos = {nome: "Bob", idade: 25}

# ----------------------------------------------------------------------------------


3. Comparando Símbolos:
Símbolos são comparados de forma eficiente, uma vez que são únicos:


simbolo1 = :hello
simbolo2 = :hello

puts simbolo1 == simbolo2  # Retorna true

# ----------------------------------------------------------------------------------------


4. Convertendo Strings em Símbolos e Vice-Versa:

# Convertendo string para símbolo
string_para_simbolo = "abc".to_sym

# Convertendo símbolo para string
simbolo_para_string = :xyz.to_s

# ----------------------------------------------------------------------------------------


5. Usando Símbolos como Argumentos de Métodos:
Símbolos são frequentemente usados como argumentos de métodos para indicar ações:


def executar_acao(acaique)
  case acao
  when :correr
    puts "Correndo!"
  when :pular
    puts "Pulando!"
  else
    puts "Ação desconhecida"
  end
end

executar_acao(:correr)

# ------------------------------------------------------------------------------------------

6. Símbolos como Chaves em Hashes:

# Usando símbolos como chaves em um hash
pessoa = {nome: "João", idade: 25, cidade: "São Paulo"}
puts pessoa[:nome]  # Retorna "João"