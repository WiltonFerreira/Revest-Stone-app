class CreateTabelaCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :tabela_compras do |t|
      t.date :data
      t.references :recurso, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true
      t.decimal :valor
      t.boolean :ativo

      t.timestamps
    end
  end
end
