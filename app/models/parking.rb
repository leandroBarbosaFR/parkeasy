class Parking < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :reviews
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
  # validates :photos, attached: true, limit: { min: 1, max: 6 }
  validates :address, presence: true
  validates :post_code, presence: true
  validates :city, presence: true

  pg_search_scope :search_by_address, associated_against: {
    address_parking: [:address]
  }

  geocoded_by :full_street_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_street_address
    [address, post_code, city].compact.join(', ')
  end

  private

  def image_limit_min
    return if photos.empty?
      errors[:base] << "You need to upload at least one image"
  end
end
