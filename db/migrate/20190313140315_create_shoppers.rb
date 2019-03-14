class CreateShoppers < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppers do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :shipping_address
      t.string :billing_address

      t.timestamps
    end
  end
end
