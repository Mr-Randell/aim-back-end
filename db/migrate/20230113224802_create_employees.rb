class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :employee_name
      t.date :date_of_birth
      t.date :joining_date
      t.date :leaving_date
      t.string :password_digest

      t.timestamps
    end
  end
end
