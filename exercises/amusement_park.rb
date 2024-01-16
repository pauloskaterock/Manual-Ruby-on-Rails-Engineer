class Attendee
    # Define a classe Attendee. 
    # Objetos desta classe representam participantes (participantes de um evento, por exemplo).

    attr_reader :height, :pass_id
    # Declara atributos de leitura (height e pass_id), 
    # permitindo que você acesse esses atributos fora da classe.

    def initialize(height)
        # Este é o método construtor (initialize).
        # Ele é chamado automaticamente quando você cria uma nova instância da classe.
        # Aceita um argumento height e atribui esse valor à variável de instância @height.
      @height = height
    end
  
    def issue_pass!(pass_id)
        # Este método recebe um argumento pass_id e atribui esse valor à variável de instância @pass_id.
        # O método termina com o caractere ! indicando que pode alterar o estado do objeto.
      @pass_id = pass_id
    end
  
    def revoke_pass!
        # Este método define @pass_id como nil, revogando o passe do participante.
        # Assim como issue_pass!, termina com ! indicando que pode alterar o estado do objeto.
      @pass_id = nil
    end
end