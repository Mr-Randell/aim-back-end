class AddReleasedYearToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :released_year, :string
  end
end
