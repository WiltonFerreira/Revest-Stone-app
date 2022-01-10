class AddCnpjcpfToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :cnpj, :string
    add_column :suppliers, :cpf, :string
  end
end
