class CreateRecursos < ActiveRecord::Migration[7.0]
  def change
    create_table :recursos do |t|
      t.string :nome
      t.string :medida
      t.references :grupo_recurso, null: false, foreign_key: true
      t.string :nome_curto
      t.boolean :ativo

      t.timestamps
    end
  end
end
