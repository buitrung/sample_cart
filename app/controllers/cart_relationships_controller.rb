class CartRelationshipsController < ApplicationController

	# before_action :initialize_cart#, only: [:create]

	def create
		product = Product.find_by(id: params[:product_id])
		quantity = params[:quantity]

		unless product.nil?
			cart_relationship = current_cart.cart_relationships.find_by(product_id: product.id)

			if cart_relationship.nil?
				cart_relationship = CartRelationship.new(
					cart_id: current_cart.id,
					product_id: product.id,
					quantity: quantity
				)

				if cart_relationship.save
					redirect_to products_path
				else
					redirect_to cart_path
				end
			else
				cart_relationship.update_attribute(:quantity, cart_relationship.quantity + 1)
				redirect_to products_path
				# Notify update successfully
			end
		end
	end

	def destroy
		current_cart.cart_relationships.find_by(product_id: params[:product_id]).destroy
		# Notify remove successfully
		redirect_to cart_path
	end

	def update
		current_cart.cart_relationships.find_by(product_id: params[:product_id]).update_attribute(:quantity, params[:quantity])
		# Notify update successfully
		redirect_to cart_path
	end

	private
		# def initialize_cart
		# 	Cart.create(session_id: session[:session_id]) unless cart_exist?
		# end
end
