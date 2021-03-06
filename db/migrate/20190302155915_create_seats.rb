# frozen_string_literal: true

class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.belongs_to :show, index: true
      t.string :name

      t.timestamps
    end
  end
end
