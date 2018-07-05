class Product < ApplicationRecord
  belongs_to :category
  has_many :product_attributes
  has_many :product_orders
  has_many :fields, through: :product_attributes
  delegate :name, to: :category, prefix: true
  # delegate :title, :discount_rate, :branding, :category, to: :discount_detail, prefix: true

  def name
    fields.find_by(kind: :name).value
  end

  def price
    fields.find_by(kind: :price).value.to_f
  end
end
