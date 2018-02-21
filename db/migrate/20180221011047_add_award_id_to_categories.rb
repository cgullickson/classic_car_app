class AddAwardIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :award_id, :integer
  end
end
