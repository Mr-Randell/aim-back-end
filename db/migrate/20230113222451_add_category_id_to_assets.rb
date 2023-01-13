class AddCategoryIdToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :category_id, :integer
  end
end
