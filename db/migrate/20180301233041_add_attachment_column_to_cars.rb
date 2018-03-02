class AddAttachmentColumnToCars < ActiveRecord::Migration[5.1]
  def change
    add_attachment :cars, :image
  end
end
