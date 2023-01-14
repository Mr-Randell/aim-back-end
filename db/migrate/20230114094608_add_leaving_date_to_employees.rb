class AddLeavingDateToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :leaving_date, :string
  end
end
