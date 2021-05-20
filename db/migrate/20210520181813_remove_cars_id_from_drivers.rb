class RemoveCarsIdFromDrivers < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :cars_id, :integer
  end
end
