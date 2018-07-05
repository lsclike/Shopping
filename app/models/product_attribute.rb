class ProductAttribute < ApplicationRecord
  belongs_to :product
  belongs_to :field, foreign_key: "attribute_id", class_name: "Attribute"
end
