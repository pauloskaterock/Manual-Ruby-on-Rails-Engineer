# O RuboCop é uma ferramenta de análise estática de código para Ruby que
# ajuda a manter um código consistente e seguindo as convenções de estilo. 
# Aqui estão os passos básicos para usar o RuboCop em seu projeto:

# 1. Instalação do RuboCop:

# Você pode instalar o RuboCop como uma gem usando o seguinte comando no terminal:


 gem install rubocop
# Ou, se estiver usando o Bundler em seu projeto Ruby, adicione o RuboCop ao seu arquivo Gemfile:


group :development, :test do
  gem 'rubocop', require: false
end

# E então execute:


bundle install

# 2. Configuração do RuboCop:
# O RuboCop pode ser configurado usando um arquivo chamado .rubocop.yml 
# em seu diretório raiz. Você pode gerar um arquivo de configuração padrão 
# executando o seguinte comando no terminal:


rubocop --auto-gen-config

# Isso criará um arquivo .rubocop.yml com as configurações padrão.

# 3. Execução do RuboCop:
# Você pode executar o RuboCop no terminal usando o seguinte comando:


rubocop

# Este comando analisará seu código Ruby e imprimirá mensagens 
# sobre quaisquer violações das regras de estilo definidas pelo RuboCop.

# 4. Correção Automática de Problemas:

# Muitas das questões apontadas pelo RuboCop podem ser corrigidas automaticamente. 
# Para isso, você pode executar o seguinte comando:


rubocop --auto-correct

# Isso tentará corrigir automaticamente as questões detectadas.

# 5. Integração com Editores de Código:
# O RuboCop pode ser integrado com muitos editores de código para fornecer feedback em tempo real. 
# Certifique-se de verificar a documentação do RuboCop para integração com seu editor específico.

# 6. Configuração Personalizada:
# Você pode personalizar as regras do RuboCop conforme necessário para atender às 
# exigências específicas do seu projeto. 
# Isso é feito editando o arquivo .rubocop.yml. Consulte a documentação do 
# RuboCop para obter mais informações sobre a configuração personalizada.

# Lembre-se de que as regras de estilo são subjetivas, e a consistência 
# dentro de um projeto é geralmente mais importante do que aderir rigidamente 
# a um conjunto específico de regras. Adaptar as configurações do RuboCop às 
# necessidades do seu projeto é uma prática comum.

# -------------------------------------------------------------------------------------------------------

# Rubocop é uma joia Ruby incrivelmente popular para linting Ruby code. Com muito pouca 
# configuração, o Rubocop verifica um repositório em busca de violações dos padrões de 
# estilo da comunidade Ruby. Em muitos casos, pode até autocorrigir violações, o que Rubocop chama de "ofensas".

# O Rubocop pode ser configurado para ser executado em um pipeline de integração 
# contínua, garantindo que o código atenda a um determinado conjunto de padrões 
# antes de se fundir na ramificação principal. Você também pode executar 
# o Rubocop localmente, em um contêiner ou até mesmo com a extensão VS Code. 
# Muitas equipes de alto desempenho acham isso útil para impor os padrões da equipe, dada a 
# flexibilidade do Rubocop com configurações de regras que permitem regras personalizadas.

# O Rubocop (por padrão) verifica um projeto inteiro, portanto, o tempo necessário 
# para executar aumentará com o tamanho do projeto, o que pode retardar as 
# compilações de CI. Muitas equipes acham que isso é uma troca justa, dados os 
# benefícios de usar o Rubocop em um projeto.

# Adicionando Rubocop a um aplicativo existente
# Adicionar Rubocop a um aplicativo existente é fácil em teoria, mas pode 
# rapidamente se tornar esmagador se o projeto em questão não atender às 
# diretrizes de estilo. Felizmente, o Rubocop pode resolver uma violação de cada vez.

# Para adicionar o Rubocop a um aplicativo Ruby on Rails, comece adicionando-o ao Gemfile:

# gem 'rubocop', require: false
# Em seguida, execute:

# bundle install
# Em seguida, para executar o Rubocop, no diretório do seu projeto basta executar:

# bundle exec rubocop
# A menos que você tenha muita sorte, um projeto existente provavelmente 
# terá uma série de violações. Encaixando-se no tema, Rubocop chama essas violações de estilo de "Ofensas".

# Você pode organizar a saída do Rubocop executando:

# bundle exec rubocop --format offenses
# Correção automática de infrações
# Se você quiser, o Rubocop pode realmente corrigir 
# automaticamente uma grande quantidade de violações, apenas passando a bandeira de correção automática:

# bundle exec rubocop -a
# Muitos optam por corrigir automaticamente esses tipos de 
# infrações para reduzir o fardo de fazer um volume tão alto de 
# pequenas alterações para satisfazer os padrões do código. Se você 
# fizer alterações de correção automática, é aconselhável verificar 
# novamente a comparação antes de fazer qualquer confirmação.

# Ignorando as violações existentes
# Ao adicionar o Rubocop a um novo projeto, você pode descobrir que 
# o número de violações existentes é esmagador.

# Muitos optam por começar excluindo violações existentes, falhando 
# apenas nas verificações de novas ocorrências. Essa é uma ótima maneira 
# de garantir que o novo código atenda aos padrões, mas o trabalho do produto 
# não precisa parar totalmente enquanto o código antigo é refatorado.

# Para ignorar as violações existentes, basta executar:

# bundle exec rubocop --auto-gen-config
# Isso executa o Rubocop e gera um novo arquivo, . 
# Isso cria uma lista de exclusões que dizem ao Rubocop o que ignorar, mas 
# também serve para lembrá-lo do que resta para corrigir..rubocop_todo.yml

# Se você executar Rubocop novamente, você verá que não há ofensas!

# Agora sua equipe pode passar e fazer alterações mais gerenciáveis 
# enquanto remove exclusões do arquivo Rubocop todo.

# Mudando as regras para se adequar aos padrões da equipe
# Rubocop usa como padrão o guia de estilo padrão Ruby, do qual 
# algumas equipes podem querer desviar. Os padrões de estilo são 
# uma parte importante de uma cultura de engenharia saudável e, naturalmente, o Rubocop permite a personalização.

# Rubocop obtém sua configuração a partir do arquivo gerado automaticamente. 
# Se você já executou o Rubocop com o , seu arquivo de configuração está 
# definido para herdar dele. Isso funciona porque o arquivo é apenas um 
# arquivo de configuração sofisticado, então o arquivo de configuração 
# principal pode herdar dele..rubocop.yml--auto-gen-configrubocop_todo.yml

# .rubocop_todo.yml fornece bons exemplos de regras que estão sendo alteradas. 
# Se você quiser excluir arquivos ou diretórios específicos de falhar em uma 
# regra específica, você pode fazê-lo da seguinte maneira:

# Layout/EmptyLinesAroundClassBody:
#   Exclude:
#     - 'app/controllers/checkout_controller.rb'

# Essa configuração específica exclui o arquivo nomeado da falha 
# na verificação.app/controllers/checkout_controller.rbLayout/EmptyLinesAroundClassBody

# Você também pode substituir os valores que as verificações 
# procuram especificamente. Um exemplo é o comprimento do método, onde 
# você pode definir o máximo de linhas aceitas em um método em seu projeto adicionando o seguinte à sua configuração:

# Metrics/MethodLength:
#   Max: 24
# Você também pode desabilitar regras específicas. 
# Este exemplo desabilita a verificação de todo o projeto:Style/StringLiterals

# Style/StringLiterals:
#   Enabled: false

# Definir padrões de estilo personalizados na própria 
# base de código é uma ótima maneira de garantir que equipes inteiras
# tenham uma palavra a dizer nas decisões sobre estilo. Abrir uma solicitação 
# pull para alterar os padrões de estilo garante que os desenvolvedores 
# tenham a chance de revisar e comentar, além de não interromper o fluxo de trabalho

# Você pode até criar uma verificação personalizada, mas a complexidade 
# em torno disso está um pouco além do escopo deste artigo.

# Executando Rubocop em Semaphore

# Executar o Rubocop em integração contínua é uma maneira comum 
# de impor que os padrões de estilo sejam atendidos antes que o 
# código seja mesclado. Isso é muito fácil de fazer com Semaphore.

# Em seguida, inscreva-se no Semaphore – é mais rápido se 
# inscrever no Github para salvar alguma configuração do Github 
# mais tarde. O plano de hobby vai se adequar às nossas necessidades 
# para este exemplo. Clique em "Criar novo" e selecione "Escolher repositório" para conectar 
# o Semaphore ao seu repositório Github existente. Selecione o fluxo de trabalho básico "Ruby on Rails" 
# e edite-o para adicionar uma linha para:bundle exec rubocop

# checkout
# sem-version ruby 2.6.5
# cache restore
# bundle install --deployment --path vendor/bundle
# cache store
# bundle exec rubocop

# Como alternativa, você pode adicionar a quase qualquer 
# configuração de CI existente com a mesma facilidade.bundle exec rubocop

# O Rubocop ajuda sua equipe a decidir e aplicar padrões 
# de código em projetos Ruby, o que, sem dúvida, melhorará a 
# qualidade de sua base de código ao longo do tempo. 
# A execução do Rubocop na CI força o código que é mesclado na 
# ramificação mestre a estar em conformidade com os padrões. 
# Combinar isso com a flexibilidade de regras do Rubocop permite 
# que as equipes melhorem incrementalmente uma base de código sem 
# ficarem sobrecarregadas. Neste artigo, você viu como é fácil adicionar 
# o Rubocop a uma base de código existente, mesmo que as violações de 
# estilo estejam em todos os lugares. Adicione Rubocop aos seus 
# aplicativos Rails hoje mesmo para melhorias incrementais no estilo do seu código!