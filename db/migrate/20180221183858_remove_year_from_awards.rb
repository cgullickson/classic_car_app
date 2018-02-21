class RemoveYearFromAwards < ActiveRecord::Migration[5.1]
  def change
    remove_column :awards, :year, :integer
  end
end
