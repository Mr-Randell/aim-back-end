class RemoveDateOfBirthFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :date_of_birth, :date
  end
end
