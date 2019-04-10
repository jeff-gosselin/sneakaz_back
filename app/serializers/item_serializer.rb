class ItemSerializer < ActiveModel::Serializer
	has_many :order_items
	has_many :orders, through: :order_items
  attributes :id, :brand, :name, :category, :price, :image
end
