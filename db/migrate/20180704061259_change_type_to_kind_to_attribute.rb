class ChangeTypeToKindToAttribute < ActiveRecord::Migration[5.1]
  def change
    rename_column :attributes, :type, :kind
  end
end
