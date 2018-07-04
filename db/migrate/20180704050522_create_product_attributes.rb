class CreateProductAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_attributes do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :attribute, foreign_key: true

      t.timestamps
    end
  end
end
