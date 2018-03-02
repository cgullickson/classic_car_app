class CreateCarsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :user_id
      t.attachment :image

      t.timestamps
    end
  end
end
