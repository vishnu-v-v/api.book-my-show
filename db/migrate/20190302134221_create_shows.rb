# frozen_string_literal: true

class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.integer :number
      t.string :running_in

      t.timestamps
    end
  end
end
