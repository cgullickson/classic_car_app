class RemoveAttachmentFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :attachment, :image
  end
end
