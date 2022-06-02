class AddressParking < ApplicationRecord
  belongs_to :parking
  validates :address, presence: true
  validates :post_code, presence: true
  validates :city, presence: true

  geocoded_by :full_street_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_street_address
    [address, post_code, city].compact.join(', ')
  end
end
