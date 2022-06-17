class Parking < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_one :address_parking, dependent: :destroy
  has_many :reviews
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true

  pg_search_scope :search_by_address, associated_against: {
    address_parking: [:address]
  }
end
