# Instruções
# Neste exercício, você processará linhas de log.

# Cada linha de log é uma cadeia de caracteres formatada da seguinte maneira:
#  ."[<LEVEL>]: <MESSAGE>"
# Há três níveis de log diferentes:
# INFO
# WARNING
# ERROR
# Você tem três tarefas, cada uma das quais pegará uma linha de registro
# e pedirá que você faça algo com ela. Há muitas maneiras de Resolva essas tarefas - 
# Escolha seus métodos favoritos nos exemplos acima e veja o que você pode inventar.
# Implemente o método para retornar a mensagem de uma linha de log:LogLineParser#message
# LogLineParser.new('[ERROR]: Invalid operation').message
# # => "Invalid operation"
# Qualquer espaço em branco à esquerda ou à direita deve ser removido:
# LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# # => "Disk almost full"




class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      # raise 'Please implement the LogLineParser#message method'
      @line.split(':')[1].strip
    end
  
    def log_level
      #raise 'Please implement the LogLineParser#log_level method'
      @line.split(':')[0].gsub(/[\[\]]/, '').downcase
    end
  
    def reformat
      # raise 'Please implement the LogLineParser#reformat method'
      "#{message} (#{log_level})"
    end
  end

  # ----------------------------------------------------------------------

# Esse código Ruby define uma classe chamada que se destina a analisar e 
# manipular linhas de log. Aqui está uma explicação das diferentes partes do código:LogLineParser

# Definição da classe:
    
    
#     class LogLineParser
#     Isso declara o início da aula.LogLineParser
    
#     Método inicializador:
    
    
#     def initialize(line)
#       @line = line
#     end

# O método é um método especial em Ruby que é chamado quando um novo objeto é criado. 
# Ele pega um parâmetro e o atribui a uma variável de instância . 
# Essa variável de instância é usada para armazenar a linha de log na qual 
# o analisador operará.initializeline@line
    
#     Método da mensagem:
    
    
#     def message
#       @line.split(':')[1].strip
#     end

#     O método extrai a parte da mensagem da linha de log. 
#     Ele usa o método para dividir a linha de log em uma matriz usando os dois pontos 
#     como um delimitador e, em seguida, recupera o segundo elemento (índice 1) 
#     da matriz resultante. O método é usado para remover quaisquer espaços em branco à 
#     esquerda ou à direita da mensagem.messagesplit:strip
    
#     Método de nível de log:
    
 
#     def log_level
#       @line.split(':')[0].gsub(/[\[\]]/, '').downcase
#     end

#     O método extrai o nível de log da linha de log. 
#     Ele divide a linha de log usando os dois pontos como um delimitador e 
#     recupera o primeiro elemento (índice 0) da matriz resultante. 
#     O método é usado para remover colchetes do nível de log e é usado para 
#     converter o nível de log em minúsculas.log_level:gsub[]downcase
    
#     Método de reformatar:
    
   
#     def reformat
#       "#{message} (#{log_level})"
#     end

#     O método combina a mensagem e o nível de log em uma nova cadeia
#     de caracteres formatada. Ele chama os métodos e para obter os componentes individuais
#     e, em seguida, usa a interpolação de cadeia de caracteres para criar uma nova cadeia
#     de caracteres no formato "#{message} (#{log_level})".reformatmessagelog_level
    
#     Em resumo, essa classe fornece métodos para extrair e manipular 
#     informações de uma linha de log. Ele encapsula a lógica para analisar
#      linhas de log, tornando o código mais modular e fácil de manter. 
#      Instâncias dessa classe podem ser criadas, e os métodos podem ser 
#      chamados nessas instâncias para recuperar informações específicas de linhas de log.LogLineParser