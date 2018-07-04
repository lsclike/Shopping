class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.string :type
      t.string :value

      t.timestamps
    end
  end
end
