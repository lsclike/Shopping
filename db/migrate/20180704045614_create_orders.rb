class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.string :shipping_address
      t.date :delivery_date

      t.timestamps
    end
  end
end
