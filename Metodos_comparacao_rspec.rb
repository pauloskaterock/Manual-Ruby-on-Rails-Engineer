expect(objeto).to matcher: Este é o método mais comum usado para asserções no RSpec. Ele espera que um objeto (ou expressão) atenda a um determinado critério definido pelo "matcher". Alguns exemplos de matchers incluem eq, be, include, match, etc.Exemplo:

expect(5).to eq(5) # Verifica se 5 é igual a 5
expect(objeto).to_not matcher: Semelhante ao expect(objeto).to, mas espera que a condição seja falsa.Exemplo:

expect(5).to_not eq(3) # Verifica se 5 não é igual a 3
expect(objeto).to be_truthy / be_falsey / be_nil: Estes são matchers para verificar se um objeto é verdadeiro, falso ou nulo, respectivamente.Exemplo:

expect(5 > 3).to be_truthy # Verifica se 5 é maior que 3, ou seja, verdadeiro
expect(objeto).to respond_to(método): Verifica se um objeto responde a um determinado método.Exemplo:

expect("hello").to respond_to(:length) # Verifica se o objeto "hello" responde ao método "length"
expect(objeto).to change(atributo, :método): Verifica se uma operação causa uma mudança em um atributo específico.Exemplo:

expect { array << 1 }.to change(array, :length).by(1) # Verifica se a adição de um elemento ao array aumenta seu comprimento em 1

#############################################################################################################



# Claro! Vamos falar sobre RSpec e os métodos de comparação.

# RSpec: Uma Introdução
# O RSpec é uma biblioteca popular para escrever testes em Ruby. Ele oferece uma sintaxe expressiva e flexível para especificar o comportamento esperado de seu código. Vamos comparar como escrever testes com RSpec em relação ao Minitest.

# Descrição de Testes:

# No RSpec, você descreve o comportamento esperado do código usando blocos describe e it.
# Por exemplo, para testar um método de adição em uma calculadora:


require 'rspec/autorun'

RSpec.describe Calc do
  describe '.add' do
    context 'com valores numéricos' do
      it 'retorna a soma dos valores' do
        expect(Calc.add(1, 1)).to eq(2)
        expect(Calc.add(1.5, 1)).to eq(2.5)
      end
    end

    context 'com valores em formato de string' do
      it 'retorna a soma dos valores' do
        expect(Calc.add(1, '1')).to eq(2)
        expect(Calc.add('1.5', 1)).to eq(2.5)
        expect { Calc.add('a', 1) }.to raise_error(TypeError)
      end
    end
  end
end



Matchers:
# Os matchers são métodos usados para fazer asserções nos testes.
# Por exemplo, expect(Calc.add(1, 1)).to eq(2) verifica se a soma é igual a 2.
# Execução dos Testes:
# Execute os testes com o comando rspec nome_do_arquivo_spec.rb.

####################################################################################

# LINHAS DE COMANDO PARA EXECUÇÃO NO RSPEC

# Claro! Vamos falar sobre os **comandos de linha de execução no RSpec**. 🚀

# O **RSpec** oferece várias opções de linha de comando para personalizar seu comportamento durante a execução dos testes. Aqui estão alguns dos comandos mais úteis:

# 1. **Executar todos os testes**:
#    - Simplesmente execute `rspec` no terminal para rodar todos os testes no diretório atual.

# 2. **Executar um arquivo de teste específico**:
#    - Se você deseja executar apenas um arquivo de teste específico, use o seguinte comando:
#      ```
#      rspec path/to/seu_arquivo_spec.rb
#      ```

# 3. **Opções de linha de comando**:
#    - Para ver todas as opções disponíveis, execute o seguinte comando:
#      ```
#      rspec --help
#      ```

# 4. **Executar com o Ruby**:
#    - Geralmente, é mais simples usar o comando `rspec`. No entanto, se você precisar usar o comando `ruby`, deverá requerer o `rspec/autorun`.
#    - Você pode passar a opção `-rrspec/autorun` ao invocar o Ruby ou adicionar `require 'rspec/autorun'` a um ou mais de seus arquivos de teste.
#    - É convencional colocar configurações e arquivos de suporte em `spec/spec_helper.rb` e requerer esse arquivo nos arquivos de teste usando `require 'spec_helper'`.

# 5. **Executar comandos específicos**:
#    - Além disso, você pode usar outras opções, como `--example`, `--format`, `--tag`, `--fail-fast`, `--dry-run`, e muito mais.

# Lembre-se de que o **RSpec** é uma ferramenta poderosa para testar seu código Ruby, e esses comandos ajudam a personalizar sua experiência de teste. 🧪

# (1) Command line options - rspec.info. https://rspec.info/features/3-12/rspec-core/command-line/.

# (2) Uma Introdução ao RSpec: Testando em Ruby com Elegância. https://www.dio.me/articles/uma-introducao-ao-rspec-testando-em-ruby-com-elegancia.

# (3) RSpec - Guia Rápido - umdados.com. https://umdados.com/tutorial/rspec/rspec-quick-guide/rspec-guia-rapido.

# (4) 25 comandos básicos do CMD (Terminal do Windows). https://dtnetwork.com.br/comandos-basicos-do-cmd/.

# (5) Command Line - RSpec Help. https://rspec.help/rspec/command-line/.


# No RSpec, você pode executar seus testes de várias maneiras usando comandos de linha. Aqui estão os principais comandos de linha de execução no RSpec:

# Executar todos os testes no diretório atual:

# rspec
# Executar testes em um arquivo específico:
# bash

# rspec path/to/spec_file.rb
# Executar testes em um diretório específico:
# bash

# rspec path/to/spec_directory
# Executar testes com uma linha específica correspondente:
# bash

# rspec path/to/spec_file.rb:linenumber
# Executar testes com uma tag específica:
# css

# rspec --tag tag_name
# Executar testes com várias tags específicas:
# css

# rspec --tag tag1 --tag tag2
# Executar testes com uma descrição específica:
# arduino

# rspec -e "description"
# Executar testes e gerar um relatório de documentação:
# css

# rspec --format documentation
# Executar testes e gerar um relatório de progresso:
# scss

# rspec --format progress
# Executar testes com a opção de falhar rapidamente (exit no primeiro erro):
# css

# rspec --fail-fast
# Executar testes com a opção de mostrar backtraces completos:
# css

# rspec --backtrace