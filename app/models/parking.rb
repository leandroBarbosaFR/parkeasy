class Parking < ApplicationRecord
  belongs_to :user
  has_one :address_parking
  has_many :reviews
  has_many :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
end
