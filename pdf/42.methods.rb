# Em seu terminal digite puts 42.methods esse comando trara uma lista de methodos em ruby, abaixo a explicação de cada um deles.

[:remainder, :gcd, :lcm, :gcdlcm, :~, :floor, :ceil, :round, :truncate, :**, :<=>, :>=, :==, :allbits?, :anybits?, :nobits?, :downto, :times, :pred, :pow, :next, :digits, :abs, :===, :>>, :<=, :-@, :[], :<<, :magnitude, :zero?, :denominator, :%, :&, :upto, :*, :+, :bit_length, :-, :inspect, :chr, :/, :odd?, :ceildiv, :even?, :size, :succ, :<, :>, :to_int, :to_s, :ord, :to_f, :to_r, :to_i, :div, :divmod, :fdiv, :^, :coerce, :integer?, :|, :numerator, :rationalize, :modulo, :+@, :step, :nonzero?, :dup, :negative?, :abs2, :positive?, :phase, :angle, :to_c, :polar, :real, :imaginary, :rectangular, :arg, :real?, :eql?, :imag, :rect, :conjugate, :conj, :infinite?, :finite?, :singleton_method_added, :pretty_print_cycle, :pretty_print, :quo, :clone, :i, :clamp, :between?, :pretty_print_instance_variables, :pretty_print_inspect, :hash, :singleton_class, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :pretty_inspect, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :!~, :method, :public_method, :nil?, :singleton_method, :respond_to?, :define_singleton_method, :freeze, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :__id__, :instance_eval, :instance_exec]



Abaixo Explicação:



Aqui está uma explicação de cada um dos métodos mencionados em Ruby:

remainder: Retorna o resto da divisão de dois números.

Exemplo:


5.remainder(2) #=> 1
gcd: Retorna o maior divisor comum de dois números inteiros.

Exemplo:


12.gcd(18) #=> 6
lcm: Retorna o menor múltiplo comum de dois números inteiros.

Exemplo:


4.lcm(6) #=> 12
gcdlcm: Retorna um array contendo o maior divisor comum e o menor múltiplo comum de dois números inteiros.

Exemplo:


12.gcdlcm(18) #=> [6, 36]
~: Operador bitwise NOT (NOT lógico).

Exemplo:


~5 #=> -6
floor: Arredonda um número para baixo para o inteiro mais próximo.

Exemplo:


3.7.floor #=> 3
ceil: Arredonda um número para cima para o inteiro mais próximo.

Exemplo:


3.2.ceil #=> 4
round: Arredonda um número para o inteiro mais próximo.

Exemplo:


3.5.round #=> 4
truncate: Trunca um número para um inteiro.

Exemplo:


3.9.truncate #=> 3
**: Operador de exponenciação. Retorna o resultado da base elevada à potência.

Exemplo:


2**3 #=> 8
E assim por diante. Posso continuar explicando os outros métodos da lista?


sim
ChatGPT
Claro, vamos continuar:

<=>: Operador de comparação. Retorna -1 se o objeto for menor que o argumento, 0 se forem iguais e 1 se o objeto for maior que o argumento.

Exemplo:


5 <=> 3  #=> 1
5 <=> 5  #=> 0
3 <=> 5  #=> -1
>=: Retorna true se o objeto for maior ou igual ao argumento, senão retorna false.

Exemplo:


5 >= 3   #=> true
5 >= 5   #=> true
3 >= 5   #=> false
==: Verifica se dois objetos são iguais.

Exemplo:


5 == 5   #=> true
"foo" == "bar" #=> false
allbits?: Retorna true se todos os bits do número estiverem definidos.

Exemplo:


7.allbits?(7) #=> true
anybits?: Retorna true se algum dos bits do número estiverem definidos.

Exemplo:


7.anybits?(4) #=> true
nobits?: Retorna true se nenhum dos bits do número estiverem definidos.

Exemplo:


0.nobits?(1) #=> true
downto: Itera da corrente (self) até o número passado, chamando o bloco para cada iteração.

Exemplo:


5.downto(1) { |n| print n, ".. " } #=> 5.. 4.. 3.. 2.. 1..
times: Itera o número de vezes especificado, chamando o bloco para cada iteração.

Exemplo:


3.times { |n| print n, ".. " } #=> 0.. 1.. 2..
pred: Retorna o antecessor do número (o número anterior).

Exemplo:


5.pred #=> 4
pow: Eleva o número à potência especificada.

Exemplo:


2.pow(3) #=> 8
Continuamos ou gostaria de alguma explicação mais detalhada sobre algum desses métodos?

continuamos
ChatGPT
Ótimo, continuemos:

next: Retorna o sucessor do número (o próximo número).

Exemplo:


5.next #=> 6
digits: Retorna uma matriz contendo os dígitos do número, no qual o primeiro elemento é o dígito menos significativo.

Exemplo:


123.digits #=> [3, 2, 1]
abs: Retorna o valor absoluto do número (o valor sem sinal).

Exemplo:


-5.abs #=> 5
===: Usado para testar se o argumento está dentro do intervalo do objeto.

Exemplo:


(1..5) === 3 #=> true
>>: Desloca os bits do número para a direita.

Exemplo:


8 >> 1 #=> 4
<=: Retorna true se o objeto for menor ou igual ao argumento, senão retorna false.

Exemplo:


5 <= 3   #=> false
5 <= 5   #=> true
3 <= 5   #=> true
-@: Operador de negação unário. Retorna o negativo do número.

Exemplo:


-5   #=> -5
[]: Permite acessar um elemento ou um intervalo de elementos em um objeto indexável, como um array ou uma string.

Exemplo:


"hello"[1] #=> "e"
<<: Desloca os bits do número para a esquerda.

Exemplo:


4 << 1 #=> 8
magnitude: Retorna o valor absoluto do número (o valor sem sinal). É um alias para o método abs.

Exemplo:


-5.magnitude #=> 5
Vamos continuar ou você tem alguma dúvida sobre algum desses métodos?

continuar ate o fim
ChatGPT
Claro, vamos continuar com os próximos métodos:

zero?: Retorna true se o número for zero, senão retorna false.

Exemplo:


0.zero? #=> true
denominator: Retorna o denominador do número.

Exemplo:


3.5.denominator #=> 2
%: Retorna o resto da divisão de dois números.

Exemplo:


5 % 2 #=> 1
&: Operador bitwise AND (E lógico).

Exemplo:


5 & 3 #=> 1
upto: Itera da corrente (self) até o número passado, chamando o bloco para cada iteração.

Exemplo:


1.upto(5) { |n| print n, ".. " } #=> 1.. 2.. 3.. 4.. 5..
*: Operador de multiplicação.

Exemplo:


2 * 3 #=> 6
+: Operador de adição.

Exemplo:


2 + 3 #=> 5
bit_length: Retorna o número de bits necessários para representar o número em binário, incluindo o sinal.

Exemplo:


7.bit_length #=> 3
-: Operador de subtração.

Exemplo:


5 - 3 #=> 2
inspect: Retorna uma representação em forma de string do objeto. É usado principalmente para fins de depuração.

Exemplo:


[1, 2, 3].inspect #=> "[1, 2, 3]"
Se precisar de mais explicações ou exemplos, é só me dizer!

continue
ChatGPT
Claro, continuemos:

chr: Converte um número em seu caractere ASCII correspondente.

Exemplo:


65.chr #=> "A"
/: Operador de divisão.

Exemplo:


6 / 3 #=> 2
odd?: Retorna true se o número for ímpar, senão retorna false.

Exemplo:


5.odd? #=> true
ceildiv: Retorna o quociente da divisão arredondado para cima.

Exemplo:


7.ceildiv(2) #=> 4
even?: Retorna true se o número for par, senão retorna false.

Exemplo:


4.even? #=> true
size: Retorna o tamanho do número, em bytes.

Exemplo:


123456789.size #=> 8
succ: Retorna o sucessor do número (o próximo número).

Exemplo:


5.succ #=> 6
<: Operador de comparação "menor que".

Exemplo:


3 < 5 #=> true
>: Operador de comparação "maior que".

Exemplo:


3 > 5 #=> false
to_int: Retorna o valor inteiro do número, se possível.

Exemplo:


3.5.to_int #=> 3
to_s: Retorna uma representação em forma de string do número.

Exemplo:


123.to_s #=> "123"
ord: Retorna o valor ASCII do caractere.

Exemplo:


'A'.ord #=> 65
to_f: Converte o número em um número de ponto flutuante.

Exemplo:


5.to_f #=> 5.0
to_r: Converte o número em um número racional.

Exemplo:


3.to_r #=> (3/1)
to_i: Converte o número em um número inteiro.

Exemplo:


3.5.to_i #=> 3
Se precisar de mais explicações ou exemplos sobre algum desses métodos, estou aqui para ajudar!

continue
ChatGPT
Claro, vamos continuar:

div: Realiza a divisão de dois números e retorna o resultado como um número inteiro.

Exemplo:


7.div(2) #=> 3
divmod: Retorna um array contendo o resultado da divisão e o resto da divisão de dois números.

Exemplo:


7.divmod(2) #=> [3, 1]
fdiv: Realiza a divisão de dois números e retorna o resultado como um número de ponto flutuante.

Exemplo:


7.fdiv(2) #=> 3.5
^: Operador bitwise XOR (OU exclusivo).

Exemplo:


5 ^ 3 #=> 6
coerce: Coerção de tipos para operações aritméticas. Retorna um array contendo os dois objetos convertidos para tipos compatíveis.

Exemplo:


2.coerce(3) #=> [3, 2]
integer?: Retorna true se o objeto for um número inteiro, senão retorna false.

Exemplo:


5.integer? #=> true
|: Operador bitwise OR (OU lógico).

Exemplo:


5 | 3 #=> 7
numerator: Retorna o numerador do número racional.

Exemplo:


(3/5).numerator #=> 3
rationalize: Retorna uma aproximação racional do número especificado.

Exemplo:


0.3.rationalize #=> (3/10)
modulo: Retorna o resto da divisão de dois números.

Exemplo:


7.modulo(2) #=> 1
+@: Operador de identidade unário. Retorna o próprio número.

Exemplo:


+5   #=> 5
step: Itera sobre um intervalo com incremento fixo, chamando o bloco para cada iteração.

Exemplo:


1.step(5, 2) { |n| print n, ".. " } #=> 1.. 3.. 5..
nonzero?: Retorna o próprio número se ele não for zero, senão retorna nil.

Exemplo:


5.nonzero? #=> 5
dup: Retorna uma cópia superficial do objeto.

Exemplo:


arr = [1, 2, 3]
arr_dup = arr.dup
negative?: Retorna true se o número for negativo, senão retorna false.

Exemplo:


-5.negative? #=> true
Se precisar de mais alguma explicação ou exemplo, é só pedir!

continue
ChatGPT
Claro, vamos continuar:

abs2: Retorna o quadrado do valor absoluto do número.

Exemplo:


-5.abs2 #=> 25
positive?: Retorna true se o número for positivo, senão retorna false.

Exemplo:


5.positive? #=> true
phase: Retorna o ângulo em radianos cujo valor é o número complexo.

Exemplo:


(1 + 1i).phase #=> 0.7853981633974483
angle: Retorna o ângulo em radianos cujo valor é o número complexo. (Alias para o método phase).

Exemplo:


(1 + 1i).angle #=> 0.7853981633974483
to_c: Retorna o número como um número complexo.

Exemplo:


5.to_c #=> (5+0i)
polar: Retorna um array contendo a magnitude e o ângulo em radianos do número complexo.

Exemplo:


(1 + 1i).polar #=> [1.4142135623730951, 0.7853981633974483]
real: Retorna a parte real do número complexo.

Exemplo:


(1 + 2i).real #=> 1
imaginary: Retorna a parte imaginária do número complexo.

Exemplo:


(1 + 2i).imaginary #=> 2
rectangular: Retorna o número complexo na forma retangular.

Exemplo:


(1 + 2i).rectangular #=> [1, 2]
arg: Retorna o ângulo em radianos cujo valor é o número complexo. (Alias para o método phase).

Exemplo:


(1 + 1i).arg #=> 0.7853981633974483
real?: Retorna true se o número for um número real, senão retorna false.

Exemplo:


5.real? #=> true
eql?: Verifica se dois objetos são iguais em valor e tipo.

Exemplo:


5.eql?(5) #=> true
conj: Retorna o conjugado do número complexo.

Exemplo:


(1 + 2i).conj #=> (1-2i)
conjugate: Retorna o conjugado do número complexo. (Alias para o método conj).

Exemplo:


(1 + 2i).conjugate #=> (1-2i)
infinite?: Retorna true se o número for infinito, senão retorna false.

Exemplo:


Float::INFINITY.infinite? #=> true
finite?: Retorna true se o número for finito, senão retorna false.

Exemplo:


5.finite? #=> true
singleton_method_added: Método chamado quando um método singleton é adicionado à classe.

Exemplo:


def obj.singleton_method_added(method_name)
  puts "Método singleton adicionado: #{method_name}"
end
pretty_print_cycle: Método usado pelo módulo PrettyPrint para imprimir um objeto complexo.

Exemplo:


require 'pp'
pp object
pretty_print: Método usado pelo módulo PrettyPrint para imprimir um objeto.

Exemplo:


require 'pp'
pp object
quo: Realiza a divisão de dois números e retorna o resultado como um número racional.

Exemplo:


7.quo(2) #=> (7/2)
clone: Retorna uma cópia profunda do objeto.

Exemplo:


arr = [1, 2, 3]
arr_clone = arr.clone
i: Retorna a unidade imaginária i.

Exemplo:


Complex::I #=> (0+1i)
clamp: Retorna o valor limitado entre o mínimo e o máximo especificados.

Exemplo:


5.clamp(1, 10) #=> 5
between?: Retorna true se o número estiver entre os dois valores especificados, senão retorna false.

Exemplo:


5.between?(1, 10) #=> true
pretty_print_instance_variables: Método usado pelo módulo PrettyPrint para imprimir as variáveis de instância de um objeto.

Exemplo:


require 'pp'
pp object
pretty_print_inspect: Método usado pelo módulo PrettyPrint para imprimir a representação em forma de string de um objeto.

Exemplo:


require 'pp'
pp object
hash: Retorna um valor hash para o objeto.

Exemplo:


"hello".hash #=> 1766461564467168602
singleton_class: Retorna a classe singleton do objeto.

Exemplo:


obj.singleton_class #=> #<Class:#<Object:0x00007fd9cb9c76b0>>
itself: Retorna o próprio objeto.

Exemplo:


5.itself #=> 5
methods: Retorna uma array contendo os nomes de todos os métodos públicos do objeto.

makefile
Copy code
Exemplo:

```ruby
"hello".methods #=> [:unicode_normalize, :unicode_normalize!, ...]
```
101. singleton_methods: Retorna uma array contendo os nomes de todos os métodos singleton do objeto.


Exemplo:
```ruby
obj.singleton_methods #=> [:method1, :method2, ...]
```
102. protected_methods: Retorna uma array contendo os nomes de todos os métodos protegidos do objeto.


Exemplo:
```ruby
obj.protected_methods #=> [:method1, :method2, ...]
```
103. private_methods: Retorna uma array contendo os nomes de todos os métodos privados do objeto.


Exemplo:
```ruby
obj.private_methods #=> [:method1, :method2, ...]
```
104. public_methods: Retorna uma array contendo os nomes de todos os métodos públicos do objeto.


Exemplo:
```ruby
obj.public_methods #=> [:method1, :method2, ...]
```
105. instance_variables: Retorna uma array contendo os nomes de todas as variáveis de instância do objeto.


Exemplo:
```ruby
obj.instance_variables #=> [:@var1, :@var2, ...]
```
106. instance_variable_get: Retorna o valor da variável de instância especificada.


Exemplo:
```ruby
obj.instance_variable_get(:@var1) #=> value
```
107. instance_variable_set: Define o valor da variável de instância especificada.


Exemplo:
```ruby
obj.instance_variable_set(:@var1, value)
```
108. instance_variable_defined?: Retorna true se a variável de instância estiver definida, senão retorna false.


Exemplo:
```ruby
obj.instance_variable_defined?(:@var1) #=> true
```
109. remove_instance_variable: Remove a variável de instância especificada.


Exemplo:
```ruby
obj.remove_instance_variable(:@var1)
```
110. instance_of?: Retorna true se o objeto for uma instância da classe especificada, senão retorna false.


Exemplo:
```ruby
obj.instance_of?(String) #=> true
```
111. kind_of? / is_a?: Retorna true se o objeto for uma instância da classe especificada ou de uma de suas superclasses, senão retorna false.


Exemplo:
```ruby
obj.kind_of?(Object) #=> true
```
112. display: Exibe o objeto no console, chamando seu método to_s.


Exemplo:
```ruby
obj.display
```
113. pretty_inspect: Retorna uma representação em forma de string do objeto formatada de maneira legível.


Exemplo:
```ruby
obj.pretty_inspect
```
114. public_send: Invoca o método público especificado no objeto.


Exemplo:
```ruby
obj.public_send(:method_name)
```
115. class: Retorna a classe do objeto.


Exemplo:
```ruby
obj.class #=> ClassName
```
116. tap: Permite a execução de um bloco no contexto do objeto, retornando o próprio objeto.


Exemplo:
```ruby
obj.tap { |o| puts o.inspect }
```
117. frozen?: Retorna true se o objeto estiver congelado, senão retorna false.


Exemplo:
```ruby
obj.frozen? #=> true
```
118. yield_self: Permite a execução de um bloco passando o próprio objeto como argumento.


Exemplo:
```ruby
obj.yield_self { |o| o.method }
```
119. then: Alias para o método yield_self.


Exemplo:
```ruby
obj.then { |o| o.method }
```
120. extend: Adiciona os métodos do módulo especificado como métodos de instância do objeto.


Exemplo:
```ruby
obj.extend(ModuleName)
```
121. !~: Retorna true se a string não corresponder à expressão regular, senão retorna false.

bash
Copy code
Exemplo:
```ruby
"hello" !~ /hi/ #=> true
```
122. method: Retorna um objeto Method representando o método especificado.


Exemplo:
```ruby
obj.method(:method_name)
```
123. public_method: Retorna um objeto Method representando o método público especificado.


Exemplo:
```ruby
obj.public_method(:method_name)
```
124. nil?: Retorna true se o objeto for nil, senão retorna false.


Exemplo:
```ruby
obj.nil? #=> true
```
125. singleton_method: Retorna um objeto Method representando o método singleton especificado.


Exemplo:
```ruby
obj.singleton_method(:method_name)
```
126. respond_to?: Retorna true se o objeto responder ao método especificado, senão retorna false.


Exemplo:
```ruby
obj.respond_to?(:method_name) #=> true
```
127. define_singleton_method: Define um método singleton para o objeto.


Exemplo:
```ruby
obj.define_singleton_method(:new_method) { puts "Hello!" }
```
128. freeze: Congela o objeto, impedindo que seja modificado.


Exemplo:
```ruby
obj.freeze
```
129. object_id: Retorna o ID do objeto, que é um número único.


Exemplo:
```ruby
obj.object_id #=> 1234567890
```
130. send: Invoca o método especificado no objeto.


Exemplo:
```ruby
obj.send(:method_name)
```
131. to_enum / enum_for: Retorna um Enumerator para o objeto.


Exemplo:
```ruby
obj.to_enum
```
132. !: Operador de negação lógica. Retorna false se o objeto for true, senão retorna true.


Exemplo:
```ruby
!true #=> false
```
133. equal?: Retorna true se o objeto for o mesmo que o argumento, senão retorna false.


Exemplo:
```ruby
obj1.equal?(obj2) #=> true
```
134. send: Alias para o método send.


Exemplo:
```ruby
obj.__send__(:method_name)
```
135. !=: Operador de desigualdade. Retorna true se o objeto não for igual ao argumento, senão retorna false.


Exemplo:
```ruby
obj1 != obj2 #=> true
```
136. id: Retorna o ID do objeto, que é um número único. (Alias para o método object_id).


Exemplo:
```ruby
obj.__id__ #=> 1234567890
```
Esses são todos os métodos da lista. Se precisar de mais alguma explicação ou exemplo sobre algum deles, estou à disposição!

