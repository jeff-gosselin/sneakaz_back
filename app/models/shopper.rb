class Shopper < ApplicationRecord
	has_many :orders, dependent: :destroy

	has_secure_password
	validates :username, uniqueness: { case_sensitive: false }
end
