class RemoveImageFromAttibute < ActiveRecord::Migration[5.1]
  def change
    remove_column :attributes, :image, :string
  end
end
