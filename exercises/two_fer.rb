# Instruções
# Sua tarefa é determinar o que você dirá ao distribuir o cookie extra.

# Se o seu amigo gosta de biscoitos, e se chama Do-yun, então você dirá:

# One for Do-yun, one for me.
# Se o seu amigo não gosta de biscoitos, você dá o biscoito para
# a próxima pessoa na fila da padaria. Já que você não sabe o nome deles, você vai dizer que sim.

# One for you, one for me.

class TwoFer
	def self.two_fer(name='you')
		"One for #{name}, one for me."
	end
end

# Ruby define uma classe com um método de classe .
# O objetivo dessa classe é gerar uma cadeia de caracteres "two-fer", que
# é uma forma de expressar o compartilhamento ou distribuição de algo entre duas pessoas. 
# Aqui está uma explicação do código:TwoFertwo_fer

#     Definição da classe:
    
   
#     class TwoFer
#     Isso declara o início da class.TwoFer
    
#     Método de classe two_fer:
    
    
#     def self.two_fer(name='you')
#       "One for #{name}, one for me."
#     end

#     Este é um método de classe (prefixado com ) que pode ser 
#     chamado na própria classe sem criar uma instância da classe.self.

#     Ele usa um parâmetro opcional com um valor padrão de .name'you'
#     O método retorna uma cadeia de caracteres no formato "One for #{name}, one for me". 
#     O é um espaço reservado que será substituído pelo valor real do parâmetro.#{name}name

#     Exemplo de uso:
    
#     # Calling the method with a specified name
#     result = TwoFer.two_fer('Alice')
#     puts result
#     # Output: "One for Alice, one for me."
    
#     # Calling the method without specifying a name (uses the default 'you')
#     result = TwoFer.two_fer
#     puts result
#     # Output: "One for you, one for me."
#     O objetivo da classe e seu método é fornecer uma maneira simples 
#     de gerar a cadeia de caracteres "two-fer". Se um nome for especificado, 
#     ele incluirá esse nome na cadeia de caracteres; caso contrário, o padrão será "você". 
#     Esse tipo de código é frequentemente usado para geração de texto simples ou formatação
#     de cadeia de caracteres.TwoFertwo_fer



