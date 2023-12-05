# O ActiveRecord é uma parte fundamental do framework Ruby on Rails que oferece uma abordagem orientada a objetos para interagir com bancos de dados relacionais. Ele fornece uma camada de abstração sobre o banco de dados, permitindo que os desenvolvedores interajam com os dados usando Ruby, sem a necessidade de escrever consultas SQL manualmente.

#     Aqui estão alguns conceitos-chave do ActiveRecord no Ruby on Rails:
    
#     Modelos:
    
#     Os modelos em Rails são classes Ruby que herdam da classe ActiveRecord::Base. 
#     Cada modelo representa uma tabela no banco de dados e uma instância do modelo representa uma linha nessa tabela.
    
    class User < ActiveRecord::Base
    end
    
    # Convenção sobre Configuração (CoC):
    
    # O ActiveRecord segue o princípio de Convenção sobre Configuração. Isso significa que ele assume certas convenções (nomenclatura de tabelas, nomes de colunas, etc.)
    # e, por padrão, não requer muita configuração. Por exemplo, se você tem um modelo chamado User, ele assumirá que a tabela correspondente é chamada users.
    # Associações:
    
    # ActiveRecord facilita a definição de associações entre modelos. Por exemplo, se você tem um modelo Post e um modelo Comment, 
    # você pode definir a relação de que um post tem muitos comentários da seguinte forma:
    
    class Post < ActiveRecord::Base
      has_many :comments
    end
    
    class Comment < ActiveRecord::Base
      belongs_to :post
    end
    
    # Validações:
    
    # ActiveRecord permite a definição de regras de validação diretamente no modelo. 
    # Por exemplo, se você quiser garantir que um campo title em um modelo Article não seja vazio,
    #  você pode adicionar a seguinte validação:
    
    class Article < ActiveRecord::Base
      validates :title, presence: true
    end
    
    
    # Migrações:
    
    # As migrações são scripts Ruby que facilitam a criação e modificação de esquemas de banco de dados. 
    # Por exemplo, para adicionar uma coluna chamada email à tabela users, você pode criar a seguinte migração:
    
    class AddEmailToUsers < ActiveRecord::Migration[6.0]
      def change
        add_column :users, :email, :string
      end
    end
    
    
    # Consulta Chain:
    
    # ActiveRecord oferece uma linguagem de consulta chainable, permitindo construir consultas complexas de forma legível e encadeada. 
    # Por exemplo, para encontrar todos os usuários com mais de 21 anos, você pode escrever:
    
    User.where("age > ?", 21)
    
    
    