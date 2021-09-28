class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
     t.decimal :price
     t.decimal :quantity
      
    end
  end
end
