class Order < ApplicationRecord
  include AASM
  has_many :product_orders

  aasm do
    state :unpay, initial: true
    state :payed
    event :pay do
      transitions from: :unpay, to: :payed
    end
  end
end
