class Parking < ApplicationRecord
  belongs_to :user
  has_one :address_parking, dependent: :destroy
  has_many :reviews
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
end
