class Booking < ApplicationRecord
  SERVICE_TAX = 0.14
  SWACH_BHARATH_CESS = 0.05
  KRISHI_KALYAN_CESS = 0.05

  PLATINUM = 320
  GOLD = 280
  SILVER = 240

  belongs_to :show
  belongs_to :seat
  validates :show, :seat, :date, :amount, presence: true
  # prevent multiple bookings of the same seat of a show on a single day
  validates_uniqueness_of :seat, scope: %i[show_id date]
end
