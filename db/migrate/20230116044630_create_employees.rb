class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :employee_name
      t.string :date_of_birth
      t.string :joining_date
      t.string :leaving_data
      t.string :password_digest

      t.timestamps
    end
  end
end
