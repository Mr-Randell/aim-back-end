class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :user_name
      t.string :category
      t.boolean :status
      t.string :urgency
      t.integer :user_id
      t.integer :asset_id
      t.integer :quantity

      t.timestamps
    end
  end
end
