class Bill < ApplicationRecord
  has_many :detail_bills
  belongs_to :customers
end
