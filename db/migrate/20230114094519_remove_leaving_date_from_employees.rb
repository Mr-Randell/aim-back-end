class RemoveLeavingDateFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :leaving_date, :date
  end
end
