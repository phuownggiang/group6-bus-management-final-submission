class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :passenger, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.datetime :booking_date
      t.integer :seat_number
      t.float :fare

      t.timestamps
    end
  end
end
