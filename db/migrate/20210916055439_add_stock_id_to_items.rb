class AddStockIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :stock_id, :int
  end
end
