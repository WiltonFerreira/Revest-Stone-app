class AddInstagramToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :instagram, :string
  end
end
