

class Complement
    def self.of_dna(dna)
      dna.tr('GCTA', 'CGAU')
    end
end

# Esse código Ruby define uma classe com um método de classe . 
# O objetivo desta classe é fornecer um método para gerar o complemento de 
# RNA de uma determinada sequência de DNA. Aqui está uma explicação do código:Complementof_dna

    Definição da classe:
   
    class Complement
    #Isso declara o início da aula.Complement
    
    Método de classe of_dna:
    
   
    def self.of_dna(dna)
      dna.tr('GCTA', 'CGAU')
    end

# Este é um método de classe (prefixado com ) que pode ser chamado 
# na própria classe sem criar uma instância da classe.self.
# Ele usa um parâmetro, que se espera que seja uma cadeia de 
# caracteres representando uma sequência de DNA.dna
# O método é usado para executar a tradução de caracteres. 
# Ele substitui cada ocorrência de caracteres no primeiro argumento () 
# pelo caractere correspondente no segundo argumento ().tr'GCTA''CGAU'
# O resultado é o complemento de RNA da sequência de DNA de entrada.
#     Exemplo de uso:
    
    # Calling the method with a DNA sequence
    result = Complement.of_dna('GCTA')
    puts result
    # Output: "CGAU"

# Em biologia molecular, o complemento de RNA é 
# frequentemente determinado substituindo cada ocorrência de um 
# nucleotídeo na sequência de DNA por seu complemento na sequência de RNA. 
# Este código fornece uma maneira simples e concisa de obter essa 
# tradução para uma determinada sequência de DNA.