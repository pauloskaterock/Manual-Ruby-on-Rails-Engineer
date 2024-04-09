

class Tournament
  def self.tally(input)
    matches = input.split("\n").map { |match| match.split(";") }
    results = matches.each_with_object({}) do |match, scores|
      team1, team2, result = match
      scores[team1] ||= { w: 0, d: 0, l: 0 }
      scores[team2] ||= { w: 0, d: 0, l: 0 }
      case result
      when "win"
        scores[team1][:w] += 1
        scores[team2][:l] += 1
      when "loss"
        scores[team1][:l] += 1
        scores[team2][:w] += 1
      when "draw"
        scores[team1][:d] += 1
        scores[team2][:d] += 1
      end
    end
    results.each do |team, scores|
      results[team][:mp] = scores.values.reduce(:+)
      results[team][:p]  = (scores[:w] * 3 + scores[:d])
    end
    format_results(results)
  end
  def self.format_results(results)
    sorted_results = results.sort_by { |team, result| [-result[:p], team] }
    formatted = sorted_results.map do |team, result|
      played = result[:mp].to_s.rjust(2)
      points = result[:p ].to_s.rjust(2)
      wins   = result[:w ].to_s.rjust(2)
      draws  = result[:d ].to_s.rjust(2)
      losses = result[:l ].to_s.rjust(2)
      "#{team.ljust(30)} | #{played} | #{wins} | #{draws} | #{losses} | #{points}\n"
    end
    header = "Team                           | MP |  W |  D |  L |  P\n"
    header + formatted.join
  end
end
class BookKeeping
  VERSION = 3
end

# -------------------------------------------------------------------------

# Este código Ruby define um Tournamen

# Tournament Classe:

# Explicação:

# somar Método:

# O método tallyinput) representando os resultados da partida.
# Ele processa cada partida, atualiza
# Por fim, chama o format_results método para formatar e retornar a classificação do torneio.
# format_results Método:

# Esse método usa um hash dos resultados da equipe (results) e formata-o para exibição.
# Ele classifica as equipes com base em pontos e nomes de equipes e, 
# em seguida, formata as informações de cada equipe em uma cadeia de caracteres.
# A saída resultante inclui nome da equipe, 
# partidas disputadas (MP), vitórias (W), empates (D), derrotas (L) e pontos (P).

# BookKeeping Classe:

# class BookKeeping
#   VERSION = 3
# end

# Explicação
# A classe é uma classe t simplesBookKeeping
# Exemplo de uso:

# input = "Allegoric Alaskans;Blithering Badgers;win\nCourageous Californians;Devastating Donkeys;draw\n"
# result = Tournament.tally(input)
# puts result
# Esse código produziria as classificações formatadas para os 
# resultados de correspondência determinados. A estrutura de classe 
# é projetada para separar preocupações, tornando o código modular e fácil de entender.