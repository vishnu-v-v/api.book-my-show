# frozen_string_literal: true

FactoryBot.define do
  factory :booking do
    show
    seat
    date { Date.current }
    amount { 1000.00 }
  end
end
