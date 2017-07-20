class CartsController < ApplicationController

	def show
	end

	# def create
	# 	@cart = Cart.new(session_id: session[:session_id])
	# 	if @cart.save
	# 	else
	# 		# Cart already exist or somewhat errors
	# 	end
	# end

	def destroy
		unless current_cart.nil?
			current_cart.destroy
			# Notify remove successfully
			redirect_to products_path
		end
	end

end
