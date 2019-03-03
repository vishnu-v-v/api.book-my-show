# frozen_string_literal: true

class BookingsController < ApplicationController
  before_action :authorize_access_request!
  ROLES = %w[user].freeze

  def create
    show = Show.find(params[:show_id])
    total = 0
    bookings = []
    # Roll back from saving initial bookings
    # when one of the subsequent bookings fail
    ActiveRecord::Base.transaction do
      booking_params[:seat_ids].each do |seat_id|
        seat = show.seats.find(seat_id)
        booking = Booking.create!(show: show, seat: seat, date: Date.current, amount: rate_of(seat))
        bookings << booking
      end
    end

    bookings.each { |booking| total += booking.amount }
    service_tax = total * Booking::SERVICE_TAX
    swach_bharath_cess = total * Booking::SWACH_BHARATH_CESS
    krishi_kalyan_cess = total * Booking::KRISHI_KALYAN_CESS
    net_amount = total + service_tax + swach_bharath_cess + krishi_kalyan_cess
    render json: { total: total, service_tax: service_tax,
                   swach_bharath_cess: swach_bharath_cess,
                   krishi_kalyan_cess: krishi_kalyan_cess,
                   net_amount: net_amount, message: booking_success(show) }
  rescue ActiveRecord::RecordInvalid => err
    render(json: { message: err.message, seat_id: err.record.seat_id, seat_name: err.record.seat.try(:name) }) && (return)
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def token_claims
    {
      aud: ROLES,
      verify_aud: true
    }
  end

  private

  def booking_params
    params.require(:booking).permit(seat_ids: [])
  end

  def rate_of(seat)
    return Booking::PLATINUM if seat.name.include? 'A'
    return Booking::GOLD if seat.name.include? 'B'

    Booking::SILVER
  end

  def booking_success(show)
    I18n.t('booking.success_message', show_name: show.number)
  end
end
