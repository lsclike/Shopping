class AddVerificationCodeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :verification_code, :string
    add_column :users, :expire_time, :time
  end
end
