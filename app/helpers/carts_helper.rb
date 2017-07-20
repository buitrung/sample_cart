module CartsHelper

	def cart_exist?
		cart = Cart.find_by(session_id: session[:session_id])
		!cart.nil?
	end

	def current_cart
		Cart.find_by(session_id: session[:session_id]) || Cart.create(session_id: session[:session_id])
	end

end
