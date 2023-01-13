class AddEmployeeIdToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :employee_id, :integer
  end
end
