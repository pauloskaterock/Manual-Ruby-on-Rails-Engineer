# Em Ruby, métodos de classe são métodos que pertencem à classe em si, não às instâncias individuais dessa classe. Eles são definidos usando a palavra-chave self seguida de um ponto, seguido pelo nome do método.

#     Aqui está um exemplo simples para ilustrar como você pode definir e usar métodos de classe em Ruby:
    
    
    class Carro
      @@quantidade_de_carros = 0 # Variável de classe para rastrear o número de carros
    
      def self.quantidade_de_carros
        @@quantidade_de_carros
      end
    
      def initialize(modelo)
        @modelo = modelo
        @@quantidade_de_carros += 1
      end
    
      def modelo
        @modelo
      end
    end
    
    # Criando algumas instâncias da classe Carro
    carro1 = Carro.new("Toyota")
    carro2 = Carro.new("Honda")
    
    # Acessando o método de classe para obter a quantidade de carros criados
    puts "Quantidade de carros: #{Carro.quantidade_de_carros}" 
    
    # Saída: Quantidade de carros: 2


    # Neste exemplo:
    
    # @@quantidade_de_carros é uma variável de classe que rastreia o número de instâncias da classe Carro.
    # self.quantidade_de_carros é um método de classe que retorna o valor da variável de classe @@quantidade_de_carros.
    # initialize é um método de instância que é chamado sempre que uma nova instância da classe Carro é criada.
    # modelo é um método de instância que retorna o modelo do carro.
   
    
    
    
    
    
    