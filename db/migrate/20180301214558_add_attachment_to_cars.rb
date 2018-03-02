class AddAttachmentToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :attachment, :image
  end
end
