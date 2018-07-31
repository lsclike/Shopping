class AddExpireTimeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :expire_time, :datetime
  end
end
