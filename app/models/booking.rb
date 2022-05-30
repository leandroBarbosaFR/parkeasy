class Booking < ApplicationRecord
  belongs_to :parking
  belongs_to :renter, class_name: "User", foreign_key: :user_id, optional: true
  has_many :reviews

  validates :start_at, presence: true
  validates :end_at, presence: true

end
