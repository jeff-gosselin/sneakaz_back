class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :name
      t.string :category
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end
