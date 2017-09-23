class Product < ApplicationRecord
  belongs_to :categories
  has_many :detail_bills
end
