require 'date'
class Meetup
  DAYS = {
    :sunday => 0,
    :monday => 1,
    :tuesday => 2,
    :wednesday => 3,
    :thursday => 4,
    :friday => 5,
    :saturday => 6
  }
  def initialize(month, year)
    @month = month
    @year = year
  end
  def day(day, week)
    start_day = case week
                when :teenth then 13
                when :first then 1
                when :second then 8
                when :third then 15
                when :fourth then 22
                when :last then Date.new(@year, @month, -1).day - 6
                end
    wday = Date.new(@year, @month, start_day).wday
    offset = (DAYS[day] - wday) % 7
    Date.new(@year, @month, start_day + offset)
  end
end

# -----------------------------------------------------------------

# Este código Ruby implementa uma classe chamada Meetup que fornece uma 
# maneira de calcular datas de encontros (meetups) em um determinado mês e ano.

# Vamos quebrar o código em detalhes:


# Detalhes:
# **'exigir 'dat
# DIAS:

# Um hash que mapeia os dias da semana para números de 0 a 6, onde 0 é domingo e 6 é sábado.
# initialize(mês, ano):

# Um método de inicialização que recebe o mês ('m
# dia(dia, semana):

# Um método que calcula a data de um meetup para um dia específico (day) em uma semana específica (week).
# Usa um paracase
# Calcula o dia da semana (wday) do primeiro dia usando Date.new(@year, @month, start_day).wday.
# Calcula o deslocamento necessário (offset) para atingir o dia da semana desejado.
# Retorna um objeto Date representando a data do meetup