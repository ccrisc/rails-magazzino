class AddStockToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :stock, :integer
  end
end
