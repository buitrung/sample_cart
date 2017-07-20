class Product < ApplicationRecord

	has_many :cart_relationships

	default_scope -> { order(created_at: :desc) }

	validates :title, presence: true
	validates :price, presence: true, numericality: true, allow_nil: false

end
