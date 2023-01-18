class AddIndustryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :industry, :string
  end
end
