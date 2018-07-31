class User < ApplicationRecord
  include AASM
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders


  aasm do
    state :pending, initial: true
    state :active
    event :sign_up do
      transitions from: :pending, to: :active
    end
  end
  # private

  def renew_verification_code
    update_columns verification_code: generate_verify_code, expire_time: Time.current+2.minutes
  end

  def generate_verify_code
    charset = Array('A'..'Z') + Array('a'..'z') + Array(0..9)
    Array.new(7) { charset.sample }.join
  end

  def verification_expired?
    expire_time.nil? || Time.current > expire_time
  end
end
