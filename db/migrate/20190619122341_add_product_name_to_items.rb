class AddProductNameToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :product_name, :string
  end
end
