# Em Ruby, raise é uma maneira de lançar uma exceção. Ele é usado quando ocorre uma situação excepcional durante a execução do programa e você deseja notificar o sistema sobre isso. Vou te dar alguns exemplos de como usar raise com diferentes tipos de exceções:

#     1. Raise com uma exceção padrão:
    
    def divide(a, b)
      raise "Divisão por zero" if b == 0
      a / b
    end
    
    puts divide(10, 2) # Saída: 5
    puts divide(10, 0) # Lança uma exceção "Divisão por zero"

    # Neste exemplo, se tentarmos dividir um número por zero, uma exceção será lançada com a mensagem "Divisão por zero".
    
    # 2. Raise com uma exceção específica:
    
    def validar_idade(idade)
      raise ArgumentError, "Idade inválida: #{idade}" unless idade.is_a?(Integer) && idade >= 0
    end
    
    validar_idade(25) # Passa, idade válida
    validar_idade("abc") # Lança uma exceção ArgumentError com a mensagem "Idade inválida: abc"

    # Neste caso, raise é usado para lançar uma exceção ArgumentError com uma mensagem personalizada se a idade fornecida não for um número inteiro positivo.
    
    # 3. Raise com uma exceção personalizada:
    
    class MeuErro < StandardError
    end
    
    def fazer_algo
      raise MeuErro, "Ocorreu um erro personalizado"
    end
    
    begin
      fazer_algo
    rescue MeuErro => e
      puts "Erro capturado: #{e.message}"
    end

    # Aqui, definimos uma classe de erro personalizada MeuErro que herda de StandardError. Usamos raise para lançar esta exceção dentro do método fazer_algo. Em seguida, usamos begin e rescue para capturar a exceção e lidar com ela.
    
    # Esses são apenas alguns exemplos de como raise pode ser usado em Ruby para lidar com exceções. É importante notar que você deve usar exceções de forma apropriada para situações excepcionais no seu código e não como controle de fluxo normal.
    
    
    
    