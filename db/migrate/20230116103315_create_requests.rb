class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :asset_id
      t.integer :quantity
      t.string :status
      t.string :urgency
      t.integer :user_id

      t.timestamps
    end
  end
end
