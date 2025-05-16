# Classe que representa um participante (Attendee) em um parque de diversões.
class Attendee
  # Método inicializador que define a altura do participante ao criar uma nova instância.
  def initialize(height)
    @height = height   # Define a altura do participante no momento da criação do objeto.
  end

  # Método que emite um passe de entrada para o participante.
  # O passe é identificado por um pass_id (um número ou string único).
  def issue_pass!(pass_id)
    @pass_id = pass_id  # Atribui o ID do passe ao participante.
  end

  # Método que revoga o passe de entrada do participante.
  def revoke_pass!
    @pass_id = nil  # Remove o passe, tornando-o inválido.
  end

  # 🔹 Métodos abaixo devem ser implementados para verificar elegibilidade do participante.

  # Método que verifica se o participante tem um passe válido.
  # Retorna true se existir um passe e false caso contrário.
  def has_pass?
    @pass_id != nil  # Se @pass_id for diferente de nil, significa que o participante tem um passe.
  end

  # Método que verifica se a altura do participante permite que ele use um brinquedo.
  # Compara a altura do participante com a altura mínima exigida.
  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height  # Retorna true se a altura do participante for suficiente.
  end

  # Método que verifica se o participante pode andar no brinquedo.
  # O participante precisa **ter um passe válido** e **atender ao requisito de altura mínima**.
  def allowed_to_ride?(ride_minimum_height)
    has_pass? && fits_ride?(ride_minimum_height)  # Retorna true se ambas as condições forem atendidas.
  end
end
