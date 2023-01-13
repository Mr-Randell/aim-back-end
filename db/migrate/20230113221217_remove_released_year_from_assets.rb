class RemoveReleasedYearFromAssets < ActiveRecord::Migration[7.0]
  def change
    remove_column :assets, :released_year, :string
  end
end
