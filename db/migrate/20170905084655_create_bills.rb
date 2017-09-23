class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.references :customers, foreign_key: true
      t.timestamps
    end
  end
end
