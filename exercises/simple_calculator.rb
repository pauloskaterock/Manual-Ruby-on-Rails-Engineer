# Instruções
# Neste exercício, você estará criando tratamento de erros para uma calculadora simples.
# O objetivo é ter uma calculadora funcional que retorne uma cadeia de caracteres com
# o seguinte padrão: , quando fornecido com argumentos e .16 + 51 = 671651+

# SimpleCalculator.calculate(16, 51, "+")
# # => "16 + 51 = 67"
# SimpleCalculator.calculate(32, 6, "*")
# # => "32 * 6 = 192"
# SimpleCalculator.calculate(512, 4, "/")
# # => "512 / 4 = 128"

# 1. Manipule o código que pode gerar erros dentro do método calculate
# O principal método para implementação nesta tarefa será o método de método de classe. 
# São necessários três argumentos. Os dois primeiros argumentos são números sobre os quais
# uma operação será conduzida. O terceiro argumento é do tipo string e para este exercício é necessário implementar as seguintes operações:SimpleCalculator.calculate()

# adição usando a cadeia de caracteres+
# multiplicação usando a cadeia de caracteres*
# divisão usando a cadeia de caracteres/

# 2. Lidar com operações ilegais
# Atualize o método para gerar uma exceção para símbolos de
# operação desconhecidos.SimpleCalculator.calculate()UnsupportedOperation

# SimpleCalculator.calculate(1, 2, '-')

# # => Raises an UnsupportedOperation

# 3. Lidar com argumentos inválidos

# Atualize o método para gerar uma exceção para tipos de 
# argumento inválidos.SimpleCalculator.calculate()ArgumentError

# SimpleCalculator.calculate(1, '2', '*')
# # => Raises an ArgumentError
# 4. Manipule as exceções DivideByZero
# Atualize o para manipular exceções. O código de manipulação 
# deve retornar a cadeia de caracteres com o conteúdo . 
# Qualquer outra exceção não deve ser tratada pelo 
# método.SimpleCalculator.calculate()ZeroDivisionErrorDivision by zero is 
# not allowed.SimpleCalculator.calculate()

# SimpleCalculator.calculate(512, 0, "/")
# # => returns "Division by zero is not allowed."
#-------------------------------------------------------------------------------------------------


class SimpleCalculator
    class UnsupportedOperation < StandardError
    end
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
    def self.calculate(first_operand, second_operand, operation)
      raise ArgumentError if first_operand.class == String || second_operand.class == String
      raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
      
      begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
      rescue ZeroDivisionError => e
        "Division by zero is not allowed."
      end
    end
end


#--------------------------------------------------------------------------------------------------

# código Ruby fornecido define uma classe com uma classe de exceção aninhada. 
# A classe tem uma constante e um método de classe para executar cálculos simples. 
# Vamos detalhar o código:SimpleCalculatorUnsupportedOperationALLOWED_OPERATIONScalculate

# Classe de exceção interna:


# class UnsupportedOperation < StandardError
# end

# Isso declara uma classe de exceção interna que herda do . 
# Essa classe de exceção personalizada pode ser gerada quando uma operação 
# sem suporte é fornecida.UnsupportedOperationStandardError

# Constante ALLOWED_OPERATIONS:


# ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
# Essa constante define uma matriz de operações permitidas (, e ). 
# O método é usado para tornar a matriz imutável para evitar modificações acidentais.+/*freeze

# Método de classe calcular:


# def self.calculate(first_operand, second_operand, operation)
#   raise ArgumentError if first_operand.class == String || second_operand.class == String
#   raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
 
#   begin
#     "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
#   rescue ZeroDivisionError => e
#     "Division by zero is not allowed."
#   end
# end

# O método usa três argumentos: , e .first_operandsecond_operandoperation

# Ele levanta um se ou é uma cadeia de caracteres. 
# Isso é para garantir que os operandos sejam valores numéricos.ArgumentErrorfirst_operandsecond_operand
# Ele gera uma exceção se o fornecido não estiver na 
# lista de operações permitidas.UnsupportedOperationoperation
# Dentro de um bloco, ele tenta realizar o cálculo 
# usando o método. O resultado é uma cadeia de caracteres que contém a expressão e seu resultado.beginsend
# Se um ocorrer durante o cálculo (divisão por zero), ele resgatará a
#  exceção e retornará uma mensagem de erro personalizada.ZeroDivisionError
# Problema potencial: Há um erro de digitação no código: . Deve ser (singular)
# em vez de .unless ALLOWED_OPERATIONS.include? operationsoperationoperations

# Exemplo de uso:

# result = SimpleCalculator.calculate(10, 5, '+')
# puts result
# # Output: "10 + 5 = 15"

# result = SimpleCalculator.calculate(10, 0, '/')
# puts result
# # Output: "Division by zero is not allowed."

# result = SimpleCalculator.calculate(5, 3, '-')
# # Raises UnsupportedOperation exception

# Essa classe fornece uma funcionalidade básica de calculadora
#  com tratamento de erros para divisão por zero e operações sem suporte.
# Instâncias da classe não são necessárias porque o 
# método é definido como um método de classe ().SimpleCalculatorcalculateself.calculate