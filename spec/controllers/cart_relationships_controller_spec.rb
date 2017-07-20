require 'rails_helper'

RSpec.describe CartRelationshipsController, type: :controller do

	# before(:all) do
	# 	@session_id = Faker::Crypto.md5
	# 	@cart = Cart.create(session_id: @session_id)
	# end

	# describe "POST create" do
	# 	# let(:a) { attribute_for(user) }
	# 	context "when product_id is nil" do
	# 		it "should be invalid" do
	# 			post :create, params: { product_id: nil, quantity: 99 }
	# 			expect(response).to have_http_status(204)
	# 		end
	# 	end

	# 	context "when quantity is nil" do
	# 		it "should be invalid" do
	# 			post :create, params: { product_id: 10, quantity: nil }
	# 			expect(response).to have_http_status(204)
	# 		end
	# 	end

	# 	context "when quantity is non numeric" do
	# 		it "should be invalid" do
	# 			post :create, params: { product_id: 10, quantity: "twenty" }
	# 			expect(response).to have_http_status(204)
	# 		end
	# 	end
	# end

	# describe "DELETE destroy" do
	# 	# subject { delete :destroy }

	# 	context "when no carts exist" do
	# 		it "should pass without errors" do
	# 			delete :destroy
	# 			expect(response).to redirect_to(cart_path)
	# 		end
	# 	end
	# end
end
