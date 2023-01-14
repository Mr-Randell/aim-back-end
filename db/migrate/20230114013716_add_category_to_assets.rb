class AddCategoryToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :category, :string
  end
end
