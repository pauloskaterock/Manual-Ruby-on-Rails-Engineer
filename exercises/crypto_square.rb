class Crypto
    def initialize(plaintext) # Método Initialize
      @plaintext = plaintext # variável de instância .@plaintext
    end
    def ciphertext  # método ciphertext
      chars = @plaintext.downcase.scan(/\w/)
      length = chars.length.zero? ? 1 : chars.length
      columuns = (length**(1 / 2.0)).ceil
      rows = (length / columuns.to_f).ceil
      chars.concat([' '] * (columuns * rows - length))
      chars.each_slice(columuns).to_a.transpose.map(&:join).join(' ')
    end
end

# ------------------------------------------------------------------------------

# Explicação:

# Método Initialize:

# É um método construtor que inicializa uma nova instância da classe com um determinado
# texto sem formatação.Crypto
# O texto sem formatação é armazenado em uma variável de instância .@plaintext
# método ciphertext:

# Esse método executa a criptografia e retorna o texto cifrado.
# Primeiro, ele converte o texto sem formatação em minúsculas e o 
# digitaliza usando a expressão regular para extrair caracteres de palavras./\w/
# Ele calcula o número de caracteres no texto sem formatação e determina o 
# número de colunas () e linhas () para a grade de criptografia.columnsrows
# A fórmula usada para calcular o número de colunas é , que garante que o número 
# de colunas seja aproximadamente a raiz quadrada do número de 
# caracteres.columns = (length**(1 / 2.0)).ceil
# A fórmula usada para calcular o número de linhas é , que garante
# que o número de linhas seja suficiente para acomodar todos os 
# caracteres.rows = (length / columns.to_f).ceil
# Em seguida, ele preenche a matriz de caracteres com espaços para formar uma 
# grade completa (se necessário).
# O método é usado para agrupar os caracteres em matrizes de tamanho igual 
# ao número de colunas.  é então aplicado para transpor linhas e colunas e é 
# usado para concatenar cada linha em uma cadeia de caracteres.each_slicetransposemap(&:join)
# Finalmente, a matriz resultante de cadeias de caracteres é unida com 
# espaços para formar o texto cifrado final.