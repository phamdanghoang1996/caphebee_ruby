class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, limit: 50
      t.integer :price
      t.string :description, limit: 1000
      t.string :img, limit: 200
      t.integer :product_left
      t.timestamps
    end
  end
end
