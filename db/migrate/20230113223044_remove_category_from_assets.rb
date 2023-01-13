class RemoveCategoryFromAssets < ActiveRecord::Migration[7.0]
  def change
    remove_column :assets, :category, :string
  end
end
