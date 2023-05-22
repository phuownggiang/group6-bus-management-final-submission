class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :pick_up_point
      t.string :drop_off_point
      t.integer :distance
      t.integer :duration

      t.timestamps
    end
  end
end
