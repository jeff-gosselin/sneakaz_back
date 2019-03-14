class AddingColumnToOrderItem < ActiveRecord::Migration[5.2]
  def change
		add_column :order_items, :color, :string
  end
end
