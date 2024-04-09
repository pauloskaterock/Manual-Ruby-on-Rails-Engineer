class Microwave
    def initialize(time)
      @time = time
    end
    def timer
      hours, seconds = @time.divmod(100)
      hours += seconds / 60
      seconds %= 60
      "%02d:%02d" % [hours, seconds]
    end
  end

# Este código Ruby define uma classe chamada Microwave que representa um
# temporizador de micro-ondas. O temporizador é inicializado com um tempo
# dado em minutos e segundos, e a classe fornece um método chamado timer
# para formatar esse tempo em horas e minutos.

# Aqui está uma explicação detalhada do código:


# Detalhes do Código:
# initialize(time):

# Um método de inicialização que recebe um tempo total em minutos e 
# segundos (time) como argumento e armazena esse tempo como uma variável de instância (@time).
# timer:

# Um método que converte o tempo total em horas e minutos formatados.
# divmod(60) divide o tempo total por 60 e retorna um array onde o 
# primeiro elemento é o quociente (horas) e o segundo é o resto (segundos).
# "%02d:%02d" % [hours, seconds] formata as horas e segundos como uma string 
# no formato "HH:MM", garantindo que dois dígitos sejam usados para representar cada parte.