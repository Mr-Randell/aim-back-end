class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :user_name
      t.integer :user_id
      t.string :category
      t.string :description
      t.boolean :status
      t.integer :quantity

      t.timestamps
    end
  end
end
