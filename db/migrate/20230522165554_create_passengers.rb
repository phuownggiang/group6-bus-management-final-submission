class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :contact
      t.string :address
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
