class Shopper < ApplicationRecord
	has_many :orders, dependent: :destroy
	has_many :order_items, through: :orders
	has_secure_password
	validates :username, uniqueness: { case_sensitive: false }
end
