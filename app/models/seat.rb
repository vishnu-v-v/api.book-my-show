# frozen_string_literal: true

class Seat < ApplicationRecord
  belongs_to :show

  def reserved
    Booking.exists?(show: show, seat: self, date: Date.current)
  end
end
