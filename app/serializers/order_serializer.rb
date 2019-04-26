class OrderSerializer < ActiveModel::Serializer
	has_many :order_items, dependent: :destroy
	has_many :items, through: :order_items
	belongs_to :shopper
  attributes :id, :shopper_id, :total, :complete, :date
end
