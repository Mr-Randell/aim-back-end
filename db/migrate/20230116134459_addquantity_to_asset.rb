class AddquantityToAsset < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :quantity, :integer
  end
end
