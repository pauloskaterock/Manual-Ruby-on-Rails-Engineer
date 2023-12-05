# Migrações (Migrations) no Ruby on Rails:

# As migrações são uma parte crucial do Ruby on Rails e são usadas para modificar
# o esquema do banco de dados de maneira consistente com o código da aplicação. 
# Elas facilitam a criação, alteração e exclusão de tabelas e colunas no banco de dados, 
# mantendo um histórico das alterações realizadas.

# Exemplo 1: Criando uma Tabela
# Vamos criar uma migração para criar uma tabela posts com colunas title e content.

# Criar a Migração:

rails generate migration CreatePosts

# Isso cria um arquivo na pasta db/migrate com um nome semelhante a 20230614204729_create_posts.rb
# A data e hora no nome do arquivo ajudam a Rails a aplicar as migrações na ordem correta.

# --------------------------------------------------------------------------------------------------

# Editar a Migração:

# db/migrate/20230614204729_create_posts.rb
class CreatePosts < ActiveRecord::Migration[6.0]
    def change
      create_table :posts do |t|
        t.string :title
        t.text :content
  
        t.timestamps
      end
    end
end

# create_table é um método fornecido pelo ActiveRecord
# que aceita um bloco onde você define as colunas da tabela.

# -----------------------------------------------------------------------------------------------

# Executar a Migração:

rails db:migrate


# Isso aplicará a migração e criará a tabela posts no banco de dados.

# --------------------------------------------------------------------------------------------

# Exemplo 2: Adicionando uma Coluna a uma Tabela Existente
# Vamos adicionar uma coluna published_at à tabela posts.

# Criar a Migração:

rails generate migration AddPublishedAtToPosts

#  ------------------------------------------------------------------------------------------

# Editar a Migração:

# db/migrate/20230614213045_add_published_at_to_posts.rb
class AddPublishedAtToPosts < ActiveRecord::Migration[6.0]
    def change
      add_column :posts, :published_at, :datetime
    end
  end

#   add_column adiciona uma nova coluna à tabela especificada.

# -----------------------------------------------------------------------------------------------

# Executar a Migração:

rails db:migrate

# Isso aplicará a migração e adicionará a coluna published_at à tabela posts.

# ---------------------------------------------------------------------------------------------

# Exemplo 3: Removendo uma Coluna
# Agora, vamos remover a coluna published_at da tabela posts.

# Criar a Migração:

rails generate migration RemovePublishedAtFromPosts

# -------------------------------------------------------------------------------------------

# Editar a Migração:

# db/migrate/20230614214512_remove_published_at_from_posts.rb
class RemovePublishedAtFromPosts < ActiveRecord::Migration[6.0]
    def change
      remove_column :posts, :published_at
    end
end

# remove_column remove a coluna especificada da tabela.

# ----------------------------------------------------------------------------------------

# Executar a Migração:
  
rails db:migrate

# Isso aplicará a migração e removerá a coluna published_at da tabela posts.

# ----------------------------------------------------------------------------------------------

# As migrações são reversíveis, o que significa que você pode 
# usar rails db:rollback para desfazer a última migração. 
# Isso é útil durante o desenvolvimento e testes. No entanto, 
# em ambientes de produção, é importante ser mais cuidadoso ao reverter migrações para evitar perda de dados.
 