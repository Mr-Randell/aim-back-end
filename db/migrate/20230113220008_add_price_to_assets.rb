class AddPriceToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :price, :integer
  end
end
