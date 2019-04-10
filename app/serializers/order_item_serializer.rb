class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item_id, :qty, :size, :total, :image, :color
end
