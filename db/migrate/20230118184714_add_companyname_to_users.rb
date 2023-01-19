class AddCompanynameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :companyname, :string
  end
end
