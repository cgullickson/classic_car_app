class AddColumnToCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :image, :attachment
    add_column :cars, :image, :attachment
    remove_column :cars, :image, :attachment
  end
end
