class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :show, index: true
      t.belongs_to :seat
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end
