require 'rails_helper'

RSpec.describe CartsController, type: :controller do

	before(:all) do
		@session_id = Faker::Crypto.md5
		@cart = Cart.create(session_id: @session_id)
	end

	describe "GET #show" do
		it "should be fine" do
			get :show
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(response).to render_template('show')
			# assert_match 'View', response.body
		end
	end

	describe "GET #destroy" do
		context "when cart available" do
			it "should be fine" do
				session[:session_id] = @session_id
				delete :destroy
				expect(response).to have_http_status(302)
				expect(response).to redirect_to(products_path)
			end
		end

		context "when no carts" do
			it "should raise error" do
				delete :destroy
				expect(response).to have_http_status(302)
			end
		end
	end


end
