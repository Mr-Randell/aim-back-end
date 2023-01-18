class AddPhonenumberToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phonenumber, :integer
  end
end
