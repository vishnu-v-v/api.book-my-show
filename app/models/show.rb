# frozen_string_literal: true

class Show < ApplicationRecord
  has_many :bookings
  has_many :seats
end
