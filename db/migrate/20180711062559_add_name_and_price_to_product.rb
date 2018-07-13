class AddNameAndPriceToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :name, :string
    add_column :products, :price, :float
  end
end
