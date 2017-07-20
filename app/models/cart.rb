class Cart < ApplicationRecord
	has_many :cart_relationships, dependent: :destroy
	has_many :products, through: :cart_relationships
	accepts_nested_attributes_for :cart_relationships, allow_destroy: true

	# def add_product(product, quantity)
	# 	self.products << product
	# end
end
