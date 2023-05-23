class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :gender
      t.date :date_of_birth
      t.string :nationality

      t.timestamps
    end
  end
end
