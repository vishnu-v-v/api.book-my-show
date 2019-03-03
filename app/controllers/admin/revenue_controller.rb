# frozen_string_literal: true

class Admin::RevenueController < ApplicationController
  before_action :authorize_access_request!
  ROLES = %w[admin].freeze

  def index
    total = 0
    Booking.all.each { |booking| total += booking.amount }
    service_tax = total * Booking::SERVICE_TAX
    swach_bharath_cess = total * Booking::SWACH_BHARATH_CESS
    krishi_kalyan_cess = total * Booking::KRISHI_KALYAN_CESS
    net_amount = total + service_tax + swach_bharath_cess + krishi_kalyan_cess
    render json: { total: total, service_tax: service_tax,
                   swach_bharath_cess: swach_bharath_cess,
                   krishi_kalyan_cess: krishi_kalyan_cess,
                   net_amount: net_amount }
  end

  def token_claims
    {
      aud: ROLES,
      verify_aud: true
    }
  end
end
