class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :title
      t.string :car_type
      t.string :color

      t.timestamps
    end
  end
end
