class ChangeDateToString < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :date, :string
  end
end
