# Para imprimir uma mensagem com cor no Ruby, você pode usar códigos de escape ANSI. Esses códigos controlam a formatação do texto no console, incluindo cores. Aqui está um exemplo simples de como imprimir uma mensagem com uma cor específica:

   
    
    def imprimir_mensagem_colorida(mensagem, cor)
      # Códigos de escape ANSI para cores
      cores = {
        vermelho: "\e[31m",
        verde: "\e[32m",
        amarelo: "\e[33m",
        azul: "\e[34m",
        roxo: "\e[35m",
        ciano: "\e[36m",
        branco: "\e[37m"
      }
    
      # Código de escape ANSI para resetar a cor
      reset = "\e[0m"
    
      # Verifica se a cor é válida
      if cores.key?(cor.to_sym)
        cor_ansi = cores[cor.to_sym]
        puts "#{cor_ansi}#{mensagem}#{reset}"
      else
        puts "Cor inválida: #{cor}"
      end
    end
    
    # Exemplo de uso:

    imprimir_mensagem_colorida("Olá, mundo!", :vermelho)
    imprimir_mensagem_colorida("Esta é uma mensagem verde.", :verde)

    # Neste exemplo:
    
    # A função imprimir_mensagem_colorida recebe dois argumentos: a mensagem a ser impressa e a cor desejada.
    # Um hash chamado cores é definido, que mapeia nomes de cores para códigos de escape ANSI correspondentes.
    # O código de escape ANSI para resetar a cor é definido como reset.
    # A função verifica se a cor fornecida é válida e, se for, imprime a mensagem com a cor correspondente usando o código de escape ANSI apropriado.
    # Se a cor fornecida não for válida, a função imprime uma mensagem de erro.
    # Este é apenas um exemplo básico para imprimir mensagens com cores. Você pode adicionar mais cores ao hash cores conforme necessário e personalizar a função de acordo com suas necessidades