class AddCarIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :car_id, :integer
  end
end
