class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :status
      t.string :image_url
      t.string :location
      t.integer :released_year
      t.integer :category_id

      t.timestamps
    end
  end
end
