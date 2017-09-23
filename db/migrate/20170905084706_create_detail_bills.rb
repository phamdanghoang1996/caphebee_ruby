class CreateDetailBills < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_bills do |t|
      t.references :bills, foreign_key: true
      t.references :products, foreign_key: true
      t.timestamps
    end
  end
end
