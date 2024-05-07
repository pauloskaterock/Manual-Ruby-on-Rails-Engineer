class Employee
    attr_reader :name  # Atributo `name`: A classe tem um atributo `name`, para o qual foi definido um método `attr_reader`, permitindo apenas leitura.
  
    def name=(name)  # método `name=`: Um método personalizado para atribuir um valor ao atributo `name`. Ele verifica se o valor não é uma string vazia. Se for vazio, ele lança uma exceção.
      if name == ""
        raise "Name can't be blank!"
      end
      @name = name
    end
  
    def initialize(name = "Anonymous") #    - Método `initialize`: Um método de inicialização que aceita um argumento `name` (com valor padrão "Anonymous"). Ele chama o método `name=` para atribuir o nome fornecido.
      self.name = name
    end
  
    def print_name #    - Método `print_name`: Imprime o nome da instância.
      puts "Name: #{@name}"
    end
  end
  
  class SalariedEmployee < Employee # 2. **Classe SalariedEmployee (Herança de Employee):**

    attr_reader :salary #    - Atributo `salary`: A classe tem um atributo `salary`, para o qual foi definido um método `attr_reader`, permitindo apenas leitura.
  
    def salary=(salary) #    - Método `salary=`: Um método personalizado para atribuir um valor ao atributo `salary`. Ele verifica se o valor não é negativo. Se for negativo, ele lança uma exceção.
      if salary < 0
        raise "A salary of #{salary} isn't valid!"
      end
      @salary = salary
    end
  
    def initialize(name = "Anonymous", salary = 0.0) #  Método `initialize`: Um método de inicialização que aceita dois argumentos, `name` e `salary`, com valores padrão de "Anonymous" e 0.0, respectivamente. Ele chama o método `super` para chamar o construtor da classe pai (`Employee`), passando o nome fornecido, e então atribui o salário fornecido.

      super(name)
      self.salary = salary
    end
  
    def print_pay_stub #    - Método `print_pay_stub`: Calcula e imprime o pagamento para um período específico com base no salário e imprime o nome do funcionário.

      print_name
      pay_for_period = (@salary / 365.0) * 14
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay This Period: #{formatted_pay}"
    end
  end

  class HourlyEmployee < Employee # 3. **Classe HourlyEmployee (Herança de Employee):** 

    def self.security_guard(name) #    - Métodos de classe `security_guard`, `cashier` e `janitor`: Métodos de classe que são usados para criar instâncias da classe `HourlyEmployee` com configurações predefinidas.

      HourlyEmployee.new(name, 19.25, 30)
    end
  
    def self.cashier(name)
      HourlyEmployee.new(name, 12.75, 25)
    end
  
    def self.janitor(name)
      HourlyEmployee.new(name, 10.50, 20)
    end
  
    attr_reader :hourly_wage, :hours_per_week
  
    def hourly_wage=(hourly_wage) #    - Atributos `hourly_wage` e `hours_per_week`: A classe tem atributos para o salário por hora e horas trabalhadas por semana, respectivamente, para os quais foram definidos métodos para leitura e escrita.

      if hourly_wage < 0
        raise "An hourly wage of #{hourly_wage} isn't valid!"
      end
      @hourly_wage = hourly_wage
    end
  
    def hours_per_week=(hours_per_week) #    - Métodos `hourly_wage=` e `hours_per_week=`: Métodos personalizados para atribuir valores aos atributos `hourly_wage` e `hours_per_week`, respectivamente. Eles verificam se os valores não são negativos e lançam exceções, se necessário.

      if hours_per_week < 0
        raise "#{hours_per_week} hours per week isn't valid!"
      end
      @hours_per_week = hours_per_week
    end
  
    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0) #    - Método `initialize`: Um método de inicialização que aceita três argumentos, `name`, `hourly_wage` e `hours_per_week`, com valores padrão de "Anonymous", 0.0 e 0.0, respectivamente. Ele chama o método `super` para chamar o construtor da classe pai (`Employee`), passando o nome fornecido, e então atribui os salários por hora e horas trabalhadas por semana fornecidos.

      super(name)
      self.hourly_wage = hourly_wage
      self.hours_per_week = hours_per_week
    end
  
    def print_pay_stub #    - Método `print_pay_stub`: Calcula e imprime o pagamento para um período específico com base no salário por hora e nas horas trabalhadas por semana, e imprime o nome do funcionário

      print_name
      pay_for_period = hourly_wage * hours_per_week * 2
      formatted_pay = format("$%.2f", pay_for_period)
      puts "Pay This Period: #{formatted_pay}"
    end
  end
  

  # 4. **Criação de instâncias e chamadas de métodos:**
#    - São criadas instâncias das classes `SalariedEmployee` e `HourlyEmployee`, e seus métodos `print_pay_stub` são chamados para imprimir os contracheques.


  jane = SalariedEmployee.new("Jane Doe", 50000)
  jane.print_pay_stub
  
  angela = HourlyEmployee.security_guard("Angela Matthews")
  ivan = HourlyEmployee.cashier("Ivan Stokes")
  angela.print_pay_stub
  ivan.print_pay_stub


  ################################################


#   Este código Ruby define duas classes, `Employee`, `SalariedEmployee`, e `HourlyEmployee`, cada uma com suas próprias funcionalidades. Vamos analisar cada parte:

# 1. **Classe Employee:**
#    - Atributo `name`: A classe tem um atributo `name`, para o qual foi definido um método `attr_reader`, permitindo apenas leitura.
#    - Método `name=`: Um método personalizado para atribuir um valor ao atributo `name`. Ele verifica se o valor não é uma string vazia. Se for vazio, ele lança uma exceção.
#    - Método `initialize`: Um método de inicialização que aceita um argumento `name` (com valor padrão "Anonymous"). Ele chama o método `name=` para atribuir o nome fornecido.
#    - Método `print_name`: Imprime o nome da instância.

# 2. **Classe SalariedEmployee (Herança de Employee):**
#    - Atributo `salary`: A classe tem um atributo `salary`, para o qual foi definido um método `attr_reader`, permitindo apenas leitura.
#    - Método `salary=`: Um método personalizado para atribuir um valor ao atributo `salary`. Ele verifica se o valor não é negativo. Se for negativo, ele lança uma exceção.
#    - Método `initialize`: Um método de inicialização que aceita dois argumentos, `name` e `salary`, com valores padrão de "Anonymous" e 0.0, respectivamente. Ele chama o método `super` para chamar o construtor da classe pai (`Employee`), passando o nome fornecido, e então atribui o salário fornecido.
#    - Método `print_pay_stub`: Calcula e imprime o pagamento para um período específico com base no salário e imprime o nome do funcionário.

# 3. **Classe HourlyEmployee (Herança de Employee):**
#    - Métodos de classe `security_guard`, `cashier` e `janitor`: Métodos de classe que são usados para criar instâncias da classe `HourlyEmployee` com configurações predefinidas.
#    - Atributos `hourly_wage` e `hours_per_week`: A classe tem atributos para o salário por hora e horas trabalhadas por semana, respectivamente, para os quais foram definidos métodos para leitura e escrita.
#    - Métodos `hourly_wage=` e `hours_per_week=`: Métodos personalizados para atribuir valores aos atributos `hourly_wage` e `hours_per_week`, respectivamente. Eles verificam se os valores não são negativos e lançam exceções, se necessário.
#    - Método `initialize`: Um método de inicialização que aceita três argumentos, `name`, `hourly_wage` e `hours_per_week`, com valores padrão de "Anonymous", 0.0 e 0.0, respectivamente. Ele chama o método `super` para chamar o construtor da classe pai (`Employee`), passando o nome fornecido, e então atribui os salários por hora e horas trabalhadas por semana fornecidos.
#    - Método `print_pay_stub`: Calcula e imprime o pagamento para um período específico com base no salário por hora e nas horas trabalhadas por semana, e imprime o nome do funcionário.

# 4. **Criação de instâncias e chamadas de métodos:**
#    - São criadas instâncias das classes `SalariedEmployee` e `HourlyEmployee`, e seus métodos `print_pay_stub` são chamados para imprimir os contracheques.

# Resumidamente, este código Ruby modela funcionários assalariados e por hora, permitindo a configuração de seus nomes, salários e horas trabalhadas, além de calcular e imprimir os contracheques.




