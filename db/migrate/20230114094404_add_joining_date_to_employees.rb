class AddJoiningDateToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :joining_date, :string
  end
end
