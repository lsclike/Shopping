class CreateProductOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :product_orders do |t|
      t.belongs_to :products, foreign_key: true
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
