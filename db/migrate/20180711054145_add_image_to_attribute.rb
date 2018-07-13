class AddImageToAttribute < ActiveRecord::Migration[5.1]
  def change
    add_column :attributes, :image, :string
  end
end
