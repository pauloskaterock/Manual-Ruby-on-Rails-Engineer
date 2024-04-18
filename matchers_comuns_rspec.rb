Matchers Comuns em RSpec
Igualdade Exata:
O matcher toBe verifica se dois valores são exatamente iguais.
Exemplo:
Ruby

expect(2 + 2).to be(4)


Igualdade Profunda:
O matcher toEqual verifica se dois valores são iguais, mesmo que sejam objetos complexos (como hashes ou arrays).
Exemplo:
Ruby

data = { one: 1 }
data['two'] = 2
expect(data).to eq({ one: 1, two: 2 })


Verificar se é Nulo ou Definido:
toBeNull: Verifica se o valor é exatamente nulo.
toBeDefined: Verifica se o valor é definido (não nulo).
Exemplo:
Ruby

n = nil
expect(n).to be_null
expect(n).to be_defined


Verdadeiro e Falso:
toBeTruthy: Verifica se o valor é verdadeiro (como em uma instrução if).
toBeFalsy: Verifica se o valor é falso (como em uma instrução if).
Exemplo:
Ruby

n = nil
z = 0
expect(n).not.to be_truthy
expect(z).to be_falsy


Comparação Numérica:
toBeGreaterThan: Verifica se o valor é maior que o especificado.
toBeGreaterThanOrEqual: Verifica se o valor é maior ou igual a um número.
toBeLessThan: Verifica se o valor é menor que o especificado.
toBeLessThanOrEqual: Verifica se o valor é menor ou igual a um número.
Exemplo:
Ruby

value = 2 + 2
expect(value).to be_greater_than(3)
expect(value).to be_greater_than_or_equal_to(3.5)
expect(value).to be_less_than(5)
expect(value).to be_less_than_or_equal_to(4.5)


Comparação de Ponto Flutuante:
Use toBeCloseTo para comparar números de ponto flutuante, evitando erros de arredondamento.
Exemplo:
Ruby

value = 0.1 + 0.2
expect(value).to be_close_to(0.3, delta: 0.0001)


# Lembre-se de escolher o matcher que melhor se adequa ao que você deseja testar em suas classes e tipos. 

#########################################################################################################


be_an_instance_of(Class): Verifica se o objeto é uma instância direta da classe especificada.Exemplo:

expect("hello").to be_an_instance_of(String)
be_a_kind_of(Module): Verifica se o objeto é uma instância da classe especificada ou de uma subclasse dela.Exemplo:

expect(5).to be_a_kind_of(Numeric)
be_a(Class) ou be_an(Class): Sinônimos de be_an_instance_of.Exemplo:

expect("hello").to be_a(String)
be_a_new(Class) ou be_an_new(Class): Verifica se o objeto é uma nova instância da classe especificada.Exemplo:

expect(Array.new).to be_a_new(Array)
be_instance_of(Class): Sinônimo de be_an_instance_of.Exemplo:

expect("hello").to be_instance_of(String)
be_kind_of(Class): Sinônimo de be_a_kind_of.Exemplo:

expect(5).to be_kind_of(Numeric)