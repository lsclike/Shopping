class Product < ApplicationRecord
  belongs_to :category
  has_many :product_attributes
  has_many :product_orders
end
