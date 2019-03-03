# frozen_string_literal: true

namespace :shows do
  desc 'Populate shows data on db'
  task populate_shows: :environment do
    Show.where(number: 1, running_in: 'Audi 1').first_or_create
    Show.where(number: 2, running_in: 'Audi 2').first_or_create
    Show.where(number: 3, running_in: 'Audi 3').first_or_create
  end

  task populate_seats: :environment do
    # Show 1 seats
    Seat.where(show_id: 1, name: 'A1').first_or_create
    Seat.where(show_id: 1, name: 'A2').first_or_create
    Seat.where(show_id: 1, name: 'A3').first_or_create
    Seat.where(show_id: 1, name: 'A4').first_or_create
    Seat.where(show_id: 1, name: 'A5').first_or_create
    Seat.where(show_id: 1, name: 'A6').first_or_create
    Seat.where(show_id: 1, name: 'A7').first_or_create
    Seat.where(show_id: 1, name: 'A8').first_or_create
    Seat.where(show_id: 1, name: 'A9').first_or_create

    Seat.where(show_id: 1, name: 'B1').first_or_create
    Seat.where(show_id: 1, name: 'B2').first_or_create
    Seat.where(show_id: 1, name: 'B3').first_or_create
    Seat.where(show_id: 1, name: 'B4').first_or_create
    Seat.where(show_id: 1, name: 'B5').first_or_create
    Seat.where(show_id: 1, name: 'B6').first_or_create

    Seat.where(show_id: 1, name: 'C2').first_or_create
    Seat.where(show_id: 1, name: 'C3').first_or_create
    Seat.where(show_id: 1, name: 'C4').first_or_create
    Seat.where(show_id: 1, name: 'C5').first_or_create
    Seat.where(show_id: 1, name: 'C6').first_or_create
    Seat.where(show_id: 1, name: 'C7').first_or_create

    # Show 2 seats
    Seat.where(show_id: 2, name: 'A1').first_or_create
    Seat.where(show_id: 2, name: 'A2').first_or_create
    Seat.where(show_id: 2, name: 'A3').first_or_create
    Seat.where(show_id: 2, name: 'A4').first_or_create
    Seat.where(show_id: 2, name: 'A5').first_or_create
    Seat.where(show_id: 2, name: 'A6').first_or_create
    Seat.where(show_id: 2, name: 'A7').first_or_create

    Seat.where(show_id: 2, name: 'B2').first_or_create
    Seat.where(show_id: 2, name: 'B3').first_or_create
    Seat.where(show_id: 2, name: 'B4').first_or_create
    Seat.where(show_id: 2, name: 'B5').first_or_create
    Seat.where(show_id: 2, name: 'B6').first_or_create

    Seat.where(show_id: 2, name: 'C1').first_or_create
    Seat.where(show_id: 2, name: 'C2').first_or_create
    Seat.where(show_id: 2, name: 'C3').first_or_create
    Seat.where(show_id: 2, name: 'C4').first_or_create
    Seat.where(show_id: 2, name: 'C5').first_or_create
    Seat.where(show_id: 2, name: 'C6').first_or_create
    Seat.where(show_id: 2, name: 'C7').first_or_create

    # Show 3 seats
    Seat.where(show_id: 3, name: 'A1').first_or_create
    Seat.where(show_id: 3, name: 'A2').first_or_create
    Seat.where(show_id: 3, name: 'A3').first_or_create
    Seat.where(show_id: 3, name: 'A4').first_or_create
    Seat.where(show_id: 3, name: 'A5').first_or_create

    Seat.where(show_id: 3, name: 'B2').first_or_create
    Seat.where(show_id: 3, name: 'B3').first_or_create
    Seat.where(show_id: 3, name: 'B4').first_or_create
    Seat.where(show_id: 3, name: 'B5').first_or_create
    Seat.where(show_id: 3, name: 'B6').first_or_create
    Seat.where(show_id: 3, name: 'B7').first_or_create
    Seat.where(show_id: 3, name: 'B8').first_or_create

    Seat.where(show_id: 3, name: 'C1').first_or_create
    Seat.where(show_id: 3, name: 'C2').first_or_create
    Seat.where(show_id: 3, name: 'C3').first_or_create
    Seat.where(show_id: 3, name: 'C4').first_or_create
    Seat.where(show_id: 3, name: 'C5').first_or_create
    Seat.where(show_id: 3, name: 'C6').first_or_create
    Seat.where(show_id: 3, name: 'C7').first_or_create
    Seat.where(show_id: 3, name: 'C8').first_or_create
    Seat.where(show_id: 3, name: 'C9').first_or_create
  end
end
