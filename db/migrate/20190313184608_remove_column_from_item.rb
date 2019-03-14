class RemoveColumnFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :color, :string
  end
end
