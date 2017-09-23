class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name, limit: 100
      t.string :email, limit: 100
      t.string :address, limit: 200
      t.string :phonenumber, limit: 13
      t.timestamps
    end
  end
end
