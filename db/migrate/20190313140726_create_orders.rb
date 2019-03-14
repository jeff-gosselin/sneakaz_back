class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :shopper_id
      t.float :total
      t.boolean :complete

      t.timestamps
    end
  end
end
