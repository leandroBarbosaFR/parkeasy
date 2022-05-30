class AddressParking < ApplicationRecord
  belongs_to :parking

  validates :address, presence: true
  validates :post_code, presence: true
  validates :city, presence: true
end
