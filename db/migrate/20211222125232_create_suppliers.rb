class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :fantasia
      t.string :razaosocial
      t.string :telefone
      t.string :endereco
      t.string :cidade
      t.string :estado
      t.string :email
      t.string :whatsapp
      t.string :site
      t.boolean :ativo

      t.timestamps
    end
  end
end
