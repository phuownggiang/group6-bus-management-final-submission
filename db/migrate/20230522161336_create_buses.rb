class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.integer :bus_number
      t.references :driver_ID, null: false, foreign_key: true
      t.integer :license_number
      t.string :chasissis_number
      t.string :model
      t.integer :capacity
      t.date :year

      t.timestamps
    end
  end
end
