class ShopperSerializer < ActiveModel::Serializer
	has_many :orders, dependent: :destroy
	has_many :order_items, through: :orders
  attributes :id, :username, :email, :shipping_address, :billing_address
end
