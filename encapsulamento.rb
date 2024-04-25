# Em Ruby, encapsulamento refere-se à capacidade de ocultar a implementação interna de um objeto e controlar o acesso aos seus dados e métodos. Isto é conseguido definindo quais métodos e variáveis ​​são acessíveis de fora da classe e quais são restritos ao interior da classe.

# Aqui está um exemplo que ilustra o encapsulamento em Ruby:

# rubi


class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
    puts "#{@name} is now #{@age} years old!"
  end

  private

  def secret_info
    "This is a secret message!"
  end
end

person = Person.new("Alice", 30)
puts person.name  # Accede al nombre (método público)
puts person.age   # Accede a la edad (método público)
person.celebrate_birthday  # Incrementa la edad (método público)
puts person.secret_info  # Esto generará un error, porque secret_info es un método privado


# Neste exemplo:

# A classe Personpossui dois atributos de instância: @namee @age.
# nameMétodos públicos e são definidos agepara acessar os atributos @namee @age, respectivamente.
# O método celebrate_birthdayaumenta em um a idade da pessoa e a exibe na tela.
# O método secret_info é privado, o que significa que só pode ser chamado dentro da classe Person.
# O uso do encapsulamento em Ruby permite uma melhor organização do código e ajuda a evitar modificações acidentais nos dados internos de um objeto.