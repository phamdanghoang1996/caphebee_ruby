class DetailBill < ApplicationRecord
  belongs_to :products
  belongs_to :bills
end
