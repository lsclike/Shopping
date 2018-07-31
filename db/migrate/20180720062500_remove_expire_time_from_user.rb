class RemoveExpireTimeFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :expire_time, :date
  end
end
