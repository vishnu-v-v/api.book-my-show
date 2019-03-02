class Show < ApplicationRecord
  has_many :bookings
  has_many :seats
end
