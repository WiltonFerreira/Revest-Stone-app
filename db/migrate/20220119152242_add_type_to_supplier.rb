class AddTypeToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :type, :string
  end
end
