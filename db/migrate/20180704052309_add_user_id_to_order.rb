class AddUserIdToOrder < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.belongs_to :user, :index => true, :foreign_key => true
    end
  end
end
