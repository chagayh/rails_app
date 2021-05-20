class RemoveCarIdFromCar < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :car_id, :integer
  end
end
