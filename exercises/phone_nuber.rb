

class PhoneNumber
  VALID_PHONE_NUMBER = /^([2-9]\d\d){2}\d{4}$/
  def self.clean(number)
    numbers = number.gsub(/\D/, "").sub(/^1/, "")
    numbers[VALID_PHONE_NUMBER]
  end
end

# ----------------------------------------------------------------------

# Esse código Ruby define uma classe com um método de classe que se destina a limpar
# e validar números de telefone norte-americanos. Vamos detalhar o código:PhoneNumberclean


# class PhoneNumber
#   VALID_PHONE_NUMBER = /^([2-9]\d\d){2}\d{4}$/
#   def self.clean(number)
#     numbers = number.gsub(/\D/, "").sub(/^1/, "")
#     numbers[VALID_PHONE_NUMBER]
#   end
# end

# Explicação:

# VALID_PHONE_NUMBER Constante:


# VALID_PHONE_NUMBER = /^([2-9]\d\d){2}\d{4}$/
# Essa constante define uma expressão regular () para um número de telefone válido da 
# América do Norte. Ele garante que o número comece com um dígito entre 2 e 9, 
# seguido por dois dígitos, repetido duas vezes (), e termine com quatro 
# dígitos ()./^([2-9]\d\d){2}\d{4}$/([2-9]\d\d){2}\d{4}

# limpo Método:


# def self.clean(number)
#   numbers = number.gsub(/\D/, "").sub(/^1/, "")
#   numbers[VALID_PHONE_NUMBER]
# end

# Esse método de classe, , usa um parâmetro que representa um número de telefone.cleannumber
# Ele usa para remover todos os caracteres não-dígitos do número de entrada.gsub(/\D/, "")
# Em seguida, ele usa para remover um '1' à esquerda, se presente.sub(/^1/, "")
# Finalmente, ele aplica a expressão regular para filtrar 
# números de telefone válidos da América do Norte.VALID_PHONE_NUMBER

# Exemplo de uso:


# result = PhoneNumber.clean("(123) 456-7890")
# puts result
# Este exemplo demonstra o uso do método com a entrada . 
# O resultado seria a versão limpa e validada do número de telefone, 
# de acordo com o formato de número de telefone norte-americano.clean(123) 456-7890

# Nota:
# Embora esse código tente limpar e validar números de telefone 
# norte-americanos, é importante observar que os formatos de número 
# de telefone podem variar e pode haver casos de borda não cobertos 
# por essa implementação específica. Sempre teste minuciosamente com 
# várias entradas para garantir que atenda aos requisitos específicos do seu caso de uso.