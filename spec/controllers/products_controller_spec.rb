require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

	describe "GET #index" do
		it "should be successful" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(response).to render_template('index')
			# assert_match 'View', response.body
		end

		context "with page param" do
			it "should be successful" do
				get :index, params: { page: 2 }
				expect(response).to be_success
				expect(response).to have_http_status(200)
				expect(response).to render_template('index')
			end
		end
	end

	describe "GET #show" do
		it "should be successful" do
			get :show, params: { id: 1 }
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(response).to render_template('show')
		end
	end

end
