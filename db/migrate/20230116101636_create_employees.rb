class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :location
      t.string :joining_date
      t.string :job_title

      t.timestamps
    end
  end
end
