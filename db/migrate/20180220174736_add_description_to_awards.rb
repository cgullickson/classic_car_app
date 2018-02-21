class AddDescriptionToAwards < ActiveRecord::Migration[5.1]
  def change
    add_column :awards, :description, :text
    drop_table :categories
  end

end
