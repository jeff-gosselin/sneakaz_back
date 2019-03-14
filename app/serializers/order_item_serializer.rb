class OrderItemSerializer < ActiveModel::Serializer
	belongs_to :order
	belongs_to :item
  attributes :id, :order_id, :item_id, :qty, :size, :total, :image, :color
end
