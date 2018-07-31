class Product < ApplicationRecord
  belongs_to :category
  has_many :product_orders
  delegate :name, to: :category, prefix: true
  # delegate :title, :discount_rate, :branding, :category, to: :discount_detail, prefix: true
  mount_uploader :image, AvatarUploader

end
