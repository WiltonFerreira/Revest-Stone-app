class AddInsEstadualToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :inscEstadual, :string
  end
end
