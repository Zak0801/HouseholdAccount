class AddToDatecolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :using_month, :string
    add_column :items, :using_day, :string
  end
end
