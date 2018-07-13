class DropTableProductAttribute < ActiveRecord::Migration[5.1]
  def change
    drop_table :product_attributes
  end
end
