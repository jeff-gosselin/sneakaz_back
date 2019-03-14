class ShopperSerializer < ActiveModel::Serializer
	has_many :orders, dependent: :destroy
  attributes :id, :username, :email, :shipping_address, :billing_address
end
