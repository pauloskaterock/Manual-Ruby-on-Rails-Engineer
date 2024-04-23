# Vamos explorar os conceitos de "subject" implícito e explícito no contexto do RSpec.

#     Subject Implícito:
#     O "subject" implícito é uma característica do RSpec que permite que você defina implicitamente o objeto sobre o qual os testes estão sendo executados. O RSpec define automaticamente o "subject" com base no contexto do teste. Isso é útil quando o objeto sobre o qual você está testando é óbvio a partir do contexto.
    
#     Por exemplo, considere o seguinte teste:
    
  
    RSpec.describe Calculator do
      it "adds two numbers" do
        expect(subject.add(2, 3)).to eq(5)
      end
    end

    # Neste caso, o RSpec assume que o "subject" se refere a uma instância de Calculator, pois estamos dentro de um bloco RSpec.describe Calculator. O RSpec sabe disso porque o bloco RSpec.describe especifica o tipo de objeto que estamos testando.
    
    # Subject Explícito:
    # Por outro lado, o "subject" explícito é especificado explicitamente pelo desenvolvedor nos testes. Isso é útil quando o objeto sobre o qual você está testando não é óbvio a partir do contexto, ou quando você deseja especificar um "subject" diferente do objeto padrão.
    
    # Por exemplo:
    
  
    RSpec.describe Calculator do
      subject(:my_calculator) { described_class.new }
    
      it "adds two numbers" do
        expect(my_calculator.add(2, 3)).to eq(5)
      end
    end


    # Neste exemplo, estamos especificando explicitamente que o "subject" é uma instância de Calculator e a nomeamos como my_calculator. Estamos usando described_class para se referir à classe atual sendo testada (Calculator). Isso é útil porque, se o nome da classe mudar no futuro, não precisaremos atualizar manualmente todos os testes.
    
    # Resumindo, o "subject" implícito é definido automaticamente com base no contexto do teste, enquanto o "subject" explícito é especificado explicitamente pelo desenvolvedor. Ambos os métodos têm seus usos, e cabe ao desenvolvedor decidir qual é mais apropriado para uma determinada situação.