class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40 
    # Define uma constante que representa o tempo esperado
    # em minutos que a lasanha deve permanecer no forno. O valor é fixado em 40 minutos.
  
    def remaining_minutes_in_oven(actual_minutes_in_oven)

      EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
        # # Este método recebe um argumento actual_minutes_in_oven, que representa os minutos
        #  reais que a lasanha já esteve no forno.
        # # Calcula os minutos restantes subtraindo
        #  os minutos reais do tempo esperado (EXPECTED_MINUTES_IN_OVEN).
        # # Retorna a diferença calculada.
    end
  
    def preparation_time_in_minutes(layers)
      layers * 2
    #   Este método recebe o número de camadas layers como argumento.
    #   Calcula o tempo de preparação multiplicando o número de camadas 
    #   por 2 (assumindo 2 minutos por camada).
    #   Retorna o tempo de preparação calculado.
    end
  
    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
        
      preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    #   Este método recebe dois argumentos com nomes específicos (number_of_layers e actual_minutes_in_oven).
    #   Chama o método preparation_time_in_minutes com o número de camadas (number_of_layers) como argumento.
    #   Adiciona o tempo real que a lasanha já esteve no forno (actual_minutes_in_oven).
    #   Retorna o tempo total calculado em minutos.
    end
end