class DropCarsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :cars
  end
end
