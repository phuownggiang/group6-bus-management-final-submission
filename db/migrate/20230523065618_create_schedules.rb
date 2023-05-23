class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :route, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.time :departure_time
      t.time :arrival_time
      t.references :duration, null: false, foreign_key: true
      t.string :frequency
      t.string :status

      t.timestamps
    end
  end
end
