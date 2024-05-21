# Em Ruby, os blocos são uma das características mais poderosas e versáteis da linguagem. Eles permitem que você encapsule lógica em um pedaço de código que pode ser passado como argumento para um método. Aqui está uma explicação detalhada sobre como os blocos funcionam em Ruby, juntamente com exemplos de código:

# Definição de Blocos:
# Um bloco em Ruby é um pedaço de código encapsulado entre chaves {} ou entre as palavras-chave do e end. Os blocos podem ser anexados a métodos e fornecer lógica adicional para executar dentro do contexto do método.

# Sintaxe de Bloco:

# Usando chaves
{ puts "Isso é um bloco." }

# Usando do...end
do
  puts "Isso também é um bloco."
end

# Passando Blocos para Métodos:
# Os métodos em Ruby podem receber blocos como argumentos. Eles são executados dentro do contexto do método e podem ser invocados usando a palavra-chave yield.


# Método que recebe um bloco
def meu_metodo
  puts "Antes do bloco."
  yield if block_given?  # Verifica se um bloco foi passado e o executa
  puts "Depois do bloco."
end

# Chamando o método com um bloco
meu_metodo do
  puts "Isso é o bloco."
end

# Utilizando a Palavra-chave Yield:
# A palavra-chave yield é usada dentro de um método para invocar o bloco associado a esse método.


def meu_metodo
  puts "Antes do bloco."
  yield if block_given?
  puts "Depois do bloco."
end

meu_metodo do
  puts "Isso é o bloco."
end

# Passando Parâmetros para Blocos:
# Você pode passar parâmetros para um bloco quando ele é chamado usando a palavra-chave yield.


def somar(a, b)
  resultado = yield(a, b) if block_given?
  puts "O resultado é #{resultado}"
end

somar(3, 5) do |x, y|
  x + y
end

# Blocos como Procs e Lambdas:
# Além de blocos explícitos, Ruby também tem objetos chamados Procs e Lambdas, que são blocos de código encapsulados que podem ser armazenados em variáveis e passados para métodos.


# Procs
meu_proc = Proc.new { |x| puts x * 2 }
meu_proc.call(10)  # Saída: 20

# Lambdas
minha_lambda = lambda { |x| puts x * 2 }
minha_lambda.call(10)  # Saída: 20


# Considerações Finais:
# Os blocos em Ruby fornecem uma maneira poderosa de adicionar flexibilidade aos seus métodos. Eles são amplamente utilizados em muitos aspectos da linguagem, como iteração em coleções, manipulação de arquivos, tratamento de exceções, entre outros.


# --------------------------------------------------------------------




# Definimos um método chamado 'my_method' que aceita um bloco como argumento
def my_method(&my_block)
    puts "Estamos no método, prestes a invocar o seu bloco!"
    # Chamamos o bloco usando 'call'
    my_block.call
    puts "Estamos de volta no método!"
  end
  
  # Chamamos o método 'my_method' passando um bloco
  my_method do
    puts "Estamos no bloco!"
  end
  
  # Explicação do código:
  # Definição do método:
  
  # Definimos um método chamado my_method que aceita um bloco e converte o bloco em um objeto Proc usando &my_block.
  # Impressão antes de chamar o bloco:
  
  # puts "Estamos no método, prestes a invocar o seu bloco!" 
  
  # # imprime uma mensagem indicando que estamos dentro do método, prestes a chamar o bloco.
  
  # # Chamando o bloco:
  
  # my_block.call chama o bloco que foi passado ao método my_method.
  # Impressão após chamar o bloco:
  
  # puts "Estamos de volta no método!" imprime uma mensagem indicando que voltamos ao método depois de chamar o bloco.
  
  # # Chamando o método com um bloco:
  
  # my_method do ... end chama o método my_method, passando um bloco que imprime puts "Estamos no bloco!".
  
  