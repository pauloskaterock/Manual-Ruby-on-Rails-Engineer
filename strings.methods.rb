# Em seu terminal digite puts "hello".methods esse comando trara uma lista de methodos em ruby, abaixo a explicação de cada um deles.


[:each_grapheme_cluster, :slice, :slice!, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, :hash, :unicode_normalized?, :encode!, :unicode_normalize, :unicode_normalize!, :to_c, :encode, :to_r, :include?, :%, :*, :+, :pretty_print, :unpack, :unpack1, :count, :partition, :+@, :-@, :<=>, :<<, :==, :===, :sum, :=~, :[], :[]=, :next, :empty?, :eql?, :casecmp, :casecmp?, :insert, :bytesize, :match, :match?, :succ!, :next!, :upto, :index, :byteindex, :rindex, :byterindex, :replace, :clear, :chr, :getbyte, :setbyte, :byteslice, :bytesplice, :scrub, :scrub!, :dedup, :freeze, :undump, :intern, :length, :size, :succ, :downcase, :capitalize, :upcase, :dump, :upcase!, :inspect, :swapcase!, :oct, :downcase!, :capitalize!, :swapcase, :to_str, :codepoints, :split, :lines, :hex, :chars, :to_s, :to_i, :to_f, :reverse!, :concat, :grapheme_clusters, :reverse, :bytes, :start_with?, :prepend, :crypt, :ljust, :gsub, :end_with?, :scan, :strip, :to_sym, :center, :sub, :lstrip, :chop, :rjust, :ord, :sub!, :rstrip, :delete_prefix, :chomp, :strip!, :gsub!, :chop!, :chomp!, :delete_suffix, :lstrip!, :rstrip!, :delete_prefix!, :delete_suffix!, :tr, :tr_s, :delete, :squeeze, :tr!, :tr_s!, :delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :clamp, :between?, :<=, :>=, :<, :>, :pretty_print_instance_variables, :pretty_print_inspect, :pretty_print_cycle, :singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :pretty_inspect, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :clone, :!~, :method, :public_method, :nil?, :singleton_method, :respond_to?, :define_singleton_method, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :__id__, :instance_eval, :instance_exec]


:each_grapheme_cluster: Método utilizado para iterar sobre cada agrupamento de grafema em uma string. Útil em contextos de manipulação de texto multilíngue, especialmente onde a manipulação precisa ser sensível à forma como os caracteres são agrupados visualmente.

:slice: Retorna uma nova string que é uma fatia (subsequência) da string original, começando em um índice especificado e indo até outro índice especificado (ou até o final da string, se nenhum índice for fornecido).

:slice!: Similar ao método slice, mas modifica a string original removendo a fatia selecionada e retornando-a como uma nova string.

:rpartition: Divide a string em três partes, separadas pela última ocorrência de um separador especificado (padrão ou fornecido como argumento), retornando um array contendo a parte antes do separador, o próprio separador e a parte após o separador.

:encoding: Retorna o objeto de codificação da string.

:force_encoding: Altera a codificação da string para a codificação especificada.

:b: Retorna uma representação binária da string.

:valid_encoding?: Verifica se a string contém caracteres válidos na codificação atual.

:ascii_only?: Verifica se todos os caracteres na string têm códigos ASCII.

:hash: Retorna um valor hash para a string.

:unicode_normalized?: Verifica se a string está normalizada de acordo com a forma Unicode especificada.

:encode!: Modifica a string, reformatando-a em uma codificação diferente.

:unicode_normalize: Retorna uma nova string normalizada de acordo com a forma Unicode especificada.

:unicode_normalize!: Modifica a string para que ela seja normalizada de acordo com a forma Unicode especificada.

:to_c: Converte a string em um número complexo, se possível.

:encode: Retorna uma nova string com a codificação especificada.

:to_r: Converte a string em um número racional, se possível.

:include?: Verifica se a string contém outra substring especificada.

:%: Formata a string usando uma ou mais substituições de formato.

*: **: Multiplica a string por um número inteiro, repetindo-a essa quantidade de vezes.

:+: Concatena duas strings.

:pretty_print: Método usado para imprimir uma representação formatada da string.

:unpack: Decodifica a string de acordo com o formato especificado e retorna uma matriz de valores.

:unpack1: Decodifica a primeira parte da string de acordo com o formato especificado.

:count: Conta o número de ocorrências de uma substring na string.

:partition: Divide a string em três partes, separadas pela primeira ocorrência de um separador especificado.

:+@: Operador unário de adição. Retorna a própria string.

:-@: Operador unário de subtração. Retorna a string com os caracteres precedidos por um sinal de menos.

:<=>: Operador de comparação. Compara duas strings.

:<<: Concatena uma string à outra.

:==: Verifica se duas strings são iguais.

:===: Verifica se duas strings são iguais.

:sum: Soma os valores numéricos das letras na string.

:=~: Combina a string com uma expressão regular.

:[]: Retorna um caractere ou uma substring da string.

:[]=: Substitui uma parte da string por outra substring.

:next: Retorna a próxima string no alfabeto.

:empty?: Verifica se a string está vazia.

:eql?: Verifica se duas strings são iguais.

:casecmp: Compara duas strings sem diferenciar maiúsculas de minúsculas.

:casecmp?: Compara duas strings sem diferenciar maiúsculas de minúsculas.

:insert: Insere uma substring em uma posição específica da string.

:bytesize: Retorna o tamanho da string em bytes.

:match: Retorna um objeto MatchData se a string corresponder a uma expressão regular especificada.

:match?: Verifica se a string corresponde a uma expressão regular especificada.

:succ!: Modifica a string para que seja a próxima string no alfabeto.

:next!: Modifica a string para que seja a próxima string no alfabeto.

:upto: Itera sobre cada string de uma até outra especificada.

:index: Retorna o índice da primeira ocorrência de uma substring na string.

:byteindex: Retorna o índice da primeira ocorrência de uma substring na string, contando em bytes.

:rindex: Retorna o índice da última ocorrência de uma substring na string.

:byterindex: Retorna o índice da última ocorrência de uma substring na string, contando em bytes.

:replace: Substitui o conteúdo da string por outro conteúdo especificado.

:clear: Remove todo o conteúdo da string.

:chr: Retorna o caractere representado pelo valor ASCII especificado.

:getbyte: Retorna o byte na posição especificada na string.

:setbyte: Define o byte na posição especificada na string.

:byteslice: Retorna uma substring contendo bytes da string, selecionada por índices.

:bytesplice: Substitui uma parte da string com uma substring de bytes especificada.

:scrub: Substitui caracteres inválidos na string por um caractere de substituição.

:scrub!: Modifica a string, substituindo caracteres inválidos por um caractere de substituição.

:dedup: Remove duplicatas consecutivas da string.

:freeze: Congela a string, impedindo que seja modificada.

:undump: Converte uma sequência de caracteres de escape em uma string.

:intern: Retorna o símbolo associado à string.

:length: Retorna o comprimento da string.

:size: Retorna o comprimento da string.

:succ: Retorna a próxima string no alfabeto.

:downcase: Retorna uma nova string com todos os caracteres em minúsculas.

:capitalize: Retorna uma nova string com a primeira letra em maiúscula e o restante em minúsculas.

:upcase: Retorna uma nova string com todos os caracteres em maiúsculas.

:dump: Retorna uma representação escapada da string.

:upcase!: Modifica a string para que todos os caracteres sejam em maiúsculas.

:inspect: Retorna uma representação legível da string.

:swapcase!: Modifica a string para alternar entre maiúsculas e minúsculas.

:oct: Converte a string em um número inteiro octal.

:downcase!: Modifica a string para que todos os caracteres sejam em minúsculas.

:capitalize!: Modifica a string para que a primeira letra seja em maiúscula e o restante seja em minúsculas.

:swapcase: Retorna uma nova string alternando entre maiúsculas e minúsculas.

:to_str: Retorna a própria string.

:codepoints: Retorna um enumerador que itera sobre os pontos de código Unicode na string.

:split: Divide a string em substrings com base em um separador especificado.

:lines: Retorna um enumerador que itera sobre cada linha da string.

:hex: Converte a string em um número inteiro hexadecimal.

:chars: Retorna um enumerador que itera sobre cada caractere na string.

:to_s: Retorna a própria string.

:to_i: Converte a string em um número inteiro.

:to_f: Converte a string em um número de ponto flutuante.

:reverse!: Inverte a ordem dos caracteres na string.

:concat: Concatena outra string à string atual.

:grapheme_clusters: Retorna um enumerador que itera sobre cada agrupamento de grafema na string.

:reverse: Retorna uma nova string com a ordem dos caracteres invertida.

:bytes: Retorna um enumerador que itera sobre cada byte na string.

:start_with?: Verifica se a string começa com uma substring especificada.

:prepend: Adiciona uma substring ao início da string.

:crypt: Retorna uma string criptografada usando o algoritmo de criptografia especificado.

:ljust: Retorna uma nova string justificada à esquerda com um tamanho especificado.

:gsub: Substitui todas as ocorrências de um padrão por outra string.

:end_with?: Verifica se a string termina com uma substring especificada.

:scan: Retorna um array de todas as ocorrências de um padrão na string.

:strip: Retorna uma nova string com espaços em branco removidos das extremidades.

:to_sym: Retorna um símbolo correspondente à string.

:center: Retorna uma nova string centralizada em um tamanho especificado.

:sub: Substitui a primeira ocorrência de um padrão por outra string.

:lstrip: Retorna uma nova string com espaços em branco removidos do início.

:chop: Retorna uma nova string sem o último caractere.

:rjust: Retorna uma nova string justificada à direita com um tamanho especificado.

:ord: Retorna o valor ASCII do primeiro caractere na string.

:sub!: Substitui a primeira ocorrência de um padrão por outra string.

:rstrip: Retorna uma nova string com espaços em branco removidos do final.

:delete_prefix: Remove um prefixo especificado da string.

:chomp: Remove o separador de linha do final da string, se presente.

:strip!: Modifica a string removendo espaços em branco das extremidades.

:gsub!: Modifica a string substituindo todas as ocorrências de um padrão por outra string.

:chop!: Modifica a string removendo o último caractere.

:chomp!: Modifica a string removendo o separador de linha do final, se presente.

:delete_suffix: Remove um sufixo especificado da string.

:lstrip!: Modifica a string removendo espaços em branco do início.

:rstrip!: Modifica a string removendo espaços em branco do final.

:delete_prefix!: Modifica a string removendo um prefixo especificado.

:delete_suffix!: Modifica a string removendo um sufixo especificado.

:tr: Substitui caracteres da string de acordo com uma tabela de substituição.

:tr_s: Substitui caracteres da string de acordo com uma tabela de substituição, combinando caracteres consecutivos.

:delete: Remove caracteres da string que correspondem a uma expressão regular.

:squeeze: Remove caracteres duplicados consecutivos da string.

:tr!: Modifica a string substituindo caracteres de acordo com uma tabela de substituição.

:tr_s!: Modifica a string substituindo caracteres de acordo com uma tabela de substituição, combinando caracteres consecutivos.

:delete!: Modifica a string removendo caracteres que correspondem a uma expressão regular.

:squeeze!: Modifica a string removendo caracteres duplicados consecutivos.

:each_line: Itera sobre cada linha da string.

:each_byte: Itera sobre cada byte da string.

:each_char: Itera sobre cada caractere da string.

:each_codepoint: Itera sobre cada ponto de código Unicode na string.

:clamp: Retorna a string limitada entre dois valores especificados.

:between?: Verifica se a string está entre dois valores especificados.

:<=: Verifica se a string é menor ou igual a outra string.

:>=: Verifica se a string é maior ou igual a outra string.

:<: Verifica se a string é menor que outra string.

:>: Verifica se a string é maior que outra string.

:pretty_print_instance_variables: Método usado para imprimir as variáveis de instância da string de forma legível.

:pretty_print_inspect: Método usado para imprimir a representação da string de forma legível.

:pretty_print_cycle: Método usado para imprimir a representação da string de forma legível, evitando ciclos.

:singleton_class: Retorna a classe singleton da string.

:dup: Retorna uma cópia superficial da string.

:itself: Retorna a própria string.

:methods: Retorna uma array contendo os nomes de todos os métodos públicos da string.

:singleton_methods: Retorna uma array contendo os nomes de todos os métodos singleton da string.

:protected_methods: Retorna uma array contendo os nomes de todos os métodos protegidos da string.

:private_methods: Retorna uma array contendo os nomes de todos os métodos privados da string.

:public_methods: Retorna uma array contendo os nomes de todos os métodos públicos da string.

:instance_variables: Retorna uma array contendo os nomes de todas as variáveis de instância da string.

:instance_variable_get: Retorna o valor da variável de instância especificada.

:instance_variable_set: Define o valor da variável de instância especificada.

:instance_variable_defined?: Verifica se uma variável de instância está definida.

:remove_instance_variable: Remove a variável de instância especificada.

:instance_of?: Verifica se a string é uma instância de uma classe especificada.

:kind_of? / :is_a?: Verifica se a string é uma instância de uma classe especificada ou de uma de suas superclasses.

:display: Exibe a string no console, chamando seu método to_s.

:pretty_inspect: Retorna uma representação formatada da string.

:public_send: Invoca o método público especificado na string.

:class: Retorna a classe da string.

:tap: Permite a execução de um bloco no contexto da string, retornando a própria string.

:frozen?: Verifica se a string está congelada.

:yield_self: Permite a execução de um bloco passando a própria string como argumento.

:then: Alias para o método yield_self.

:extend: Adiciona os métodos de um módulo como métodos de instância da string.

:clone: Retorna uma cópia superficial da string.

:!~: Retorna true se a string não corresponder a uma expressão regular, senão retorna false.

:method: Retorna um objeto Method representando o método especificado.

:public_method: Retorna um objeto Method representando o método público especificado.

:nil?: Retorna true se a string for nil, senão retorna false.

:singleton_method: Retorna um objeto Method representando o método singleton especificado.

:respond_to?: Verifica se a string responde a um método especificado.

:define_singleton_method: Define um método singleton para a string.

:object_id: Retorna o ID da string.

:send: Invoca o método especificado na string.

:to_enum / :enum_for: Retorna um Enumerator para a string.

:!: Operador de negação lógica. Retorna false se a string for true, senão retorna true.

:equal?: Verifica se dois objetos são idênticos.

:send: Alias para o método send.

:!=: Operador de desigualdade. Retorna true se a string não for igual a outra string, senão retorna false.

:id: Retorna o ID da string. (Alias para o método object_id).