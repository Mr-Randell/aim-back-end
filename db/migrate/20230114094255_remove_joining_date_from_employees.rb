class RemoveJoiningDateFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :joining_date, :date
  end
end
