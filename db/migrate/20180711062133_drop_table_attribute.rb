class DropTableAttribute < ActiveRecord::Migration[5.1]
  def change
    drop_table :attributes
  end
end
