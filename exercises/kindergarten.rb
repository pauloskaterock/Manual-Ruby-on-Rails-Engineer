class Garden
    DEFAULT_CLASS = %w[Alice Bob Charlie David
                       Eve Fred Ginny Harriet
                       Ileana Joseph Kincaid Larry].freeze
    PLANTS = {
      'G' => :grass,
      'C' => :clover,
      'R' => :radishes,
      'V' => :violets
    }.freeze
    def initialize(plants, students = DEFAULT_CLASS)
      boxes = plants.lines.map { |line| line.scan(/../) }.transpose
      students.sort.each_with_index do |student, index|
        method_name = student.downcase.to_sym
        define_singleton_method(method_name) do
          boxes[index]&.join&.chars&.map(&PLANTS)
        end
      end
    end
  end
# ------------------------------------------------


# Este código implementa uma classe chamada Garden que modela um jardim de 
# infância onde cada criança possui plantas em seus respectivos copinhos. 
# A classe é projetada para fornecer métodos dinâmicos para cada criança, 
# retornando as plantas associadas a essa criança com base em um diagrama de plantas fornecido.

# # Aqui está uma explicação passo a passo do código:

# # Constantes:

# # DEFAULT_CLASS = %w[Alice Bob Charlie David
# #                    Eve Fred Ginny Harriet
# #                    Ileana Joseph Kincaid Larry].freeze
# # DEFAULT_CLASS é uma constante que contém os nomes padrão das crianças na classe 
# de jardim de infância. Elas são organizadas em ordem alfabética.


# # PLANTS = {
# #   'G' => :grass,
# #   'C' => :clover,
# #   'R' => :radishes,
# #   'V' => :violets
# # }.freeze
# # PLANTS é um hash que mapeia códigos de plantas (letras) 
# para os nomes das plantas correspondentes (símbolos).

# # Método de Inicialização:


# # def initialize(plants, students = DEFAULT_CLASS)
# # O método de inicialização recebe um argumento plants 
# (um diagrama de plantas) e um array opcional students contendo os nomes das crianças.

# # Processamento do Diagrama de Plantas:

# # boxes = plants.lines.map { |line| line.scan(/../) }.transpose
# # O diagrama de plantas é processado para criar uma matriz boxes, onde 
# cada elemento representa um copinho. Cada linha do diagrama é dividida 
# em pares de caracteres, e então as linhas são transpostas para que cada 
# coluna represente um copinho.

# # Criação de Métodos Dinâmicos:


# # students.sort.each_with_index do |student, index|
# #   method_name = student.downcase.to_sym
# #   define_singleton_method(method_name) do
# #     boxes[index]&.join&.chars&.map(&PLANTS)
# #   end
# # end
# # Para cada aluno, um método é criado dinamicamente usando 
# define_singleton_method. O nome do método é o nome do aluno 
# em letras minúsculas. Esse método retorna as plantas associadas 
# a esse aluno com base na coluna correspondente no diagrama de plantas.

# # boxes[index]: Obtém a coluna correspondente ao índice do aluno.
# # &.join: Junta os pares de caracteres para formar uma string.
# # &.chars: Divide a string em caracteres individuais.
# # &.map(&PLANTS): Mapeia cada caractere para a planta correspondente usando o hash PLANTS.
# # Essa implementação utiliza metaprogramação para criar métodos dinâmicos 
# para cada aluno, tornando o código mais limpo e extensível. 
# Existe uma consistência entre os nomes dos alunos e os métodos 
# gerados dinamicamente, o que facilita o uso da classe.