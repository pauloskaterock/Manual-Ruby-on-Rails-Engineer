class Parent    
    
    attr_accessor :last_name    
    
    def initialize(last_name)    
         
        @last_name = last_name    
    end 
 end    
 
    class Child < Parent 
 
    end    


end
child = Child.new("Smith")  

puts child.last_name

#########################################################################


# em Ruby, super e initialize estão intimamente relacionados, especialmente quando se trata de herança de classes. Vamos ver alguns exemplos para entender melhor:

# Utilizando initialize:

class Pessoa
  def initialize(nome)
    @nome = nome
  end

  def saudacao
    puts "Olá, meu nome é #{@nome}."
  end
end

pessoa1 = Pessoa.new("João")
pessoa1.saudacao  # Saída: Olá, meu nome é João.


# Neste exemplo, initialize é um método especial em Ruby que é chamado automaticamente sempre que uma nova instância da classe é criada. Ele é usado para inicializar as variáveis de instância da classe. No caso acima, @nome é uma variável de instância que é inicializada com o valor passado quando uma nova instância de Pessoa é criada.

# Utilizando super:

class Estudante < Pessoa
  def initialize(nome, matricula)
    super(nome)
    @matricula = matricula
  end

  def mostrar_info
    puts "Nome: #{@nome}, Matrícula: #{@matricula}"
  end
end

estudante1 = Estudante.new("Maria", 12345)
estudante1.mostrar_info  # Saída: Nome: Maria, Matrícula: 12345


# Neste exemplo, Estudante é uma subclasse de Pessoa. Quando você chama super(nome) dentro do método initialize da classe Estudante, está chamando o método initialize da classe pai (Pessoa), passando o parâmetro nome para garantir que a inicialização da parte relacionada ao nome seja tratada pela classe pai. Isso é útil para evitar a duplicação de código e manter a consistência na inicialização das instâncias.

# Portanto, super é usado para chamar o método de mesmo nome na classe pai, enquanto initialize é usado para inicializar variáveis de instância da classe. Juntos, eles permitem uma hierarquia de inicialização suave e flexível em Ruby.